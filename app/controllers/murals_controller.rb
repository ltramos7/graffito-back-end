class MuralsController < ApplicationController

    def index
        murals = Mural.all
        render json: murals
    end

    def show
        mural = Mural.find(params[:id])
        render json: mural
    end

    def create
        
        mural =  Mural.create(mural_title: params[:mural_title], year_installed: params[:year_installed], description: params[:description], artists: params[:artists])

        render json: mural
        
    end

    def update
        puts "***********-----------------***************"
        mural = Mural.find(params[:id])
        mural.update(mural_title: params[:mural_title], year_installed: params[:year_installed], description: params[:description], artists: params[:artists] )

        render json: mural
    end


end
