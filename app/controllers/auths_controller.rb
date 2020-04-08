class AuthsController < ApplicationController

    def create
        
        user = User.find_by(user_name: params[:user_name])

        payload = { user_id: user.id }
        token = JWT.encode(payload, 'secret', 'HS256')


        if user && user.authenticate(params[:password])
            render json: { id: user.id, user_name: user.user_name, token: token}

            else 
                render json: {error: 'Invalid Credtials'}, status: 401
        end
    
    end

    def show 
        token = request.headers[:Authorization].split(' ')[1]
     
        decoded_token = JWT.decode(token, 'secret', true, { algorithm: 'HS256'})

        user_id = decoded_token[0]['user_id']
        # this line has to be adjusted to my code

        user = User.find(user_id)

        if user 
            # render json: { id: user.id, user_name: user.user_name, token: token}
            render json: { id: user.id, first_name: user.first_name, last_name: user.last_name, user_name: user.user_name, password: user.password, token: token }

        else
            render json: {error: 'Invalid Token'}, status: 401
        end
    end
    

end
