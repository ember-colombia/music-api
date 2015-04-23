class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  def index
    @albums = Artist.all
    render json: @albums
  end

  def show
    render json: @album
  end

  def create
    @album = Artist.new(album_params)

    if @album.save
      render :show, status: :created
    else
      render json: @album.errors, status: :unprocessable_entity
    end
  end

  def update
    if @album.update(album_params)
      render :show
    else
      render json: @album.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @album.destroy
    head :no_content
  end

  private
    def set_album
      @album = Album.find(params[:id])
    end

    def album_params
      params.require(:album).permit(:name, :published_at, :cover_url, :length, :artist_id)
    end
end
