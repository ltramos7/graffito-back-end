

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

        payload = { user_id: user.id }
        token = JWT.encode(payload, 'secret', 'HS256')
        
        if user.valid?
          render json: { id: user.id, first_name: user.first_name, last_name: user.last_name, user_name: user.user_name, password: user.password, token: token }, status: :created
        else
          render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def update
      puts "-------------------------------------"
      user= User.find(params[:id])
      if user.update(user_params)
        render json: user
      else
        render json: {error: "Failed"}
      end
    end

    
 

end

private
  def user_params
      params.require(:user).permit(:first_name, :last_name, :user_name)
      # , favorite_murals: [:id, :artist_id, :mural_title, :year_installed, :description, :artists, :created_at, :updated_at]
      
  end

