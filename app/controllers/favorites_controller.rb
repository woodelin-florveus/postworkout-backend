class FavoritesController < ApplicationController

    def index
     @favorites = User.first.favorites

     render json: @favorites
    end

    

end
