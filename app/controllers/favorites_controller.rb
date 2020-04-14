class FavoritesController < ApplicationController
    def index
        favorites = Favorite.all
        render json: favorites
    end

    def show
        favorite = Favorite.find(params["id"])
        render json: favorite
    end

    def create 
        puts params
        puts '======================'
        favorite = Favorite.create(user_id: params[:user]["id"], mural_id: params[:mural]["id"])
        render json: favorite
    end

    def destroy
        Favorite.destroy(params[:id])
    end

end
