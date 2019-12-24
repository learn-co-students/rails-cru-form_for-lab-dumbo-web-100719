class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
        
    end

    def new
        @song = Song.new
    end

    def create
        s_param = params.require(:song).permit(:name, :artist_id, :genre_id)
        @song = Song.create(s_param)
    
        redirect_to @song
    end 

    def update
        s_param = params.require(:song).permit(:name, :artist_id, :genre_id)
        @song = Song.update(s_param)
        redirect_to @song
    end

    def edit
        @song = Song.find(params[:id])  
    end 

    
end
