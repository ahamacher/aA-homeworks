class TracksController < ApplicationController

  def new
    @track = Track.new
    render :new
  end

  def create
    @track = Track.find_by(id: params[:id])
    @album = @track.album
    if @track.save!
      redirect_to album_url(@album)
    else
      render json: "TRACK IS INVALID", status: 422
    end
  end

  def edit
    @track = Track.find_by(id: params[:id])
    render :edit
  end

  def show
    @track = Track.find_by(id: params[:id])
    render :show
  end

  def update
    @track = Track.find_by(id: params[:id])
    @album = @track.album
    if @track.update
      redirect_to album_url(@album)
    else
      redirect_to edit_track_url
    end
  end

  def destroy
    @track = Track.find_by(id: params[:id])
    @album = @track.album
    if @track.destroy
      redirect_to album_url(@album)
    else
      render json: "WTF how did you get here?", status: 422
    end
  end
end
