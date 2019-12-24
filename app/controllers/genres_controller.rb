class GenresController < ApplicationController
    def index
        @genres = Genre.all
    end

    def show
        @genre = Genre.find(params[:id])
        
    end

    def new
        @genre = Genre.new
    end

    def create
        g_param = params.require(:genre).permit(:name)
        @genre = Genre.create(g_param)
    
        redirect_to @genre
    end 

    def update
        g_param = params.require(:genre).permit(:name)
        @genre = Genre.update(g_param)
        redirect_to @genre
    end

    def edit
        @genre = Genre.find(params[:id])  
    end 

end
