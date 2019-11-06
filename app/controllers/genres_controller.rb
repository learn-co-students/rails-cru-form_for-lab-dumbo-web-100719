class GenresController < ApplicationController

    before_action :set_genre, only: [:show, :edit, :update]

    def index
        @genres = Genre.all
    end

    def show
        #model
    end

    def new
        @genre = Genre.new
    end

    def create
        genre = Genre.create(genre_params)
        redirect_to genre_path(genre)
    end

    def edit 
        #model
    end

    def update
        #model
        @genre = Genre.update(genre_params)
        redirect_to @genre
    end

    private

    def genre_params
        params.require(:genre).permit(:name)
    end

    def set_genre
        @genre = Genre.find(params[:id])
    end
end
