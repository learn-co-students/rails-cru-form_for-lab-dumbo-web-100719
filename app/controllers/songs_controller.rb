class SongsController < ApplicationController
  before_action :set_songs, only: [:show, :edit, :update]

  def index
    @songs = Song.all 
  end

  def new
    @song = Song.new
  end

  def show
  end

  def create
    @song = Song.create(songs_params)
    redirect_to @song
  end

  def edit 
  end

  def update
    @song.update(songs_params)
    redirect_to @song
  end

  private
  def set_songs
    @song = Song.find(params[:id])
  end
  
  def songs_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end
end
