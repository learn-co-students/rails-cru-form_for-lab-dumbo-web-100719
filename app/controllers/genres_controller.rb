class GenresController < ApplicationController
  before_action :set_genres, only: [:show, :update, :edit]

  def index
    @genres = Genre.all 
  end

  def new
    @genre = Genre.new
  end

  def show
  end

  def create
    @genre = Genre.create(genres_params)
    redirect_to @genre
  end

  def edit 
  end

  def update
    @genre.update(genres_params)
    redirect_to @genre
  end

  private
  def set_genres
    @genre = Genre.find(params[:id])
  end
  
  def genres_params
    params.require(:genre).permit(:name)
  end
end
