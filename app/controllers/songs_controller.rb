class SongsController < ApplicationController
    before_action :see_song, only: [:show, :edit, :update]
    def index
        @songs = Song.all
    end

    def show    
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.create(song_params(:name, :artist_id, :genre_id))
        redirect_to @song
    end

    def edit    
    end

    def update
        @song = Song.update(song_params(:name, :artist_id, :genre_id))
        redirect_to @song
    end

    private 

    def see_song
        @song = Song.find(params[:id])
    end

    def song_params(*args)
        params.require(:song).permit(*args)
    end
end
