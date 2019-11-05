class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update]

  def index
    @artists = Artist.all

  end

  def show
  end

  def new
    @artist=Artist.new
  end

  def create
    artist = Artist.create(strong_params)
    redirect_to artist
  end

  def edit
  end
  
  def update
    artist = Artist.update(strong_params)
    redirect_to artist
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end
  
  def strong_params
    params.require(:artist).permit(:name, :bio)
  end

end
