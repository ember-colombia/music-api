class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
    render json: @songs
  end

  def show
    render json: @song
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      render :show, status: :created
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  def update
    if @song.update(song_params)
      render :show
    else
      render json: @song.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @song.destroy
    head :no_content
  end

  private
    def set_song
      @song = Song.find(params[:id])
    end

    def song_params
      params.require(:song).permit(:name, :url, :length, :artist_id)
    end
end
