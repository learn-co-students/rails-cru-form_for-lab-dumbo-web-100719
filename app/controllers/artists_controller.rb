class ArtistsController < ApplicationController
    before_action :see_artist, only: [:show, :edit, :update]
    def show
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(params_require(:name, :bio))
        redirect_to @artist
    end

    def edit
    end

    def update
        @artist = Artist.update(params_require(:name, :bio))
        redirect_to @artist
    end

    private 

    def see_artist
        @artist = Artist.find(params[:id])
    end

    def params_require(*args)
        params.require(:artist).permit(*args)
    end
end
