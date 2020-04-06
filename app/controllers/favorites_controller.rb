class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all
        render json: favorites
    end

    def show
        favorite = Favorite.find(params[:id])
        render json: favorite
    end

    # will eventuall need a create so i can create a favotire

end
