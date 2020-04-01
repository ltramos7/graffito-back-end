class MuralsController < ApplicationController

    def index
        murals = Mural.all
        render json: murals
    end

    def show
    end

    def new
    end

end
