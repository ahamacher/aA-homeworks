class BandsController < ApplicationController
  
  def index
  end

  def new
  end

  def create
    @band = Band.new(band_params)
    
    if @band.save!
      redirect_to band_url(@band)
    else
      redirect_to bands_url
    end
  end
  
  def show
    @band = Band.find_by(id: params[:id])
    render :show
  end

  def edit
    @band = Band.find_by(id: params[:id])
    render :edit
  end

  def update
    @band = Band.find_by(id: params[:id])

    if @band.update(band_params)
      redirect_to band_url(@band)
    else
      render json: "Invalid band paramiters", status: 422
    end
  end

  def destroy
    @band = Band.find_by(id: params[:id])
    @band.destroy
    redirect_to bands_url
  end

  private

  def band_params
    params.require(:band).permit(:name)
  end
end
