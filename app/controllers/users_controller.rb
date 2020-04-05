

class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

        
    def create
    
        user = User.create(first_name: params[:first_name], last_name: params[:last_name], user_name: params[:user_name], password: params[:password])
        
        if user.valid?
          render json: { id: user.id, first_name: user.first_name, last_name: user.last_name, user_name: user.user_name, password: user.password }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

   
    
    

end


