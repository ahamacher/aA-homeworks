class AlbumsController < ApplicationController
  def new
    @band = Band.find_by(id: params[:band_id])
    render :new
  end

  def create
    @album = Album.new(album_params)
    
    if @album.save!
      redirect_to album_url(@album)
    else
      redirect_to bands_url
    end
  end

  def edit
    @album = Album.find_by(id: params[:id])
    @band = @album.band
    render :edit
  end

  def show
    @album = Album.find_by(id: params[:id])
    render :show
  end

  def update
    @album = Album.find_by(id: params[:id])
    if @album.update(album_params)
      redirect_to album_url(@album)
    else
      render json: "Invalid album paramiters", status: 422
    end
  end

  def destroy
    @album = Album.find_by(id: params[:id])
    @album.destroy
    redirect_to bands_url
  end

  private
  def album_params
    params.require(:album).permit(:title, :yr, :band_id, :live_album)
  end
end
