class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
        
    end

    def new
        @artist = Artist.new
    end

    def create
        a_params = params.require(:artist).permit(:name, :bio)
        @artist = Artist.create(a_params)
        redirect_to @artist
    end 

    def update
        a_params = params.require(:artist).permit(:name, :bio)
        @artist = Artist.update(a_params)
        redirect_to @artist
    end

    def edit
        @artist = Artist.find(params[:id])  
    end 


end
