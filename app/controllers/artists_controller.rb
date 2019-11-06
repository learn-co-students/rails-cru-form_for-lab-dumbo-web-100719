class ArtistsController < ApplicationController
  before_action :set_artists, only: [:show, :edit, :update]

  def index
    @artists = Artist.all 
  end
  
  def new
    @artist = Artist.new
  end 

  def show
  end

  def create
    @artist = Artist.create(artists_params)

    redirect_to @artist
  end

  def edit
  end

  def update
    @artist.update(artists_params)

    redirect_to @artist
  end

  private
  def set_artists
    @artist = Artist.find(params[:id])
  end
  
  def artists_params
    params.require(:artist).permit(:name, :bio)
  end
end
