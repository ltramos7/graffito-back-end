class MuralsController < ApplicationController

    def index
        murals = Mural.all
        render json: murals
    end

    def show
        mural = Mural.find(params[:id])
        render json: mural
    end

    def new
    end

end
