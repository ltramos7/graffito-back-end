class ApplicationController < ActionController::API
    def encode_token(payload)
        JWT.encode(payload, 'secret')
    end

    def decoded_token(token)
        JWT.decode(token, 'secret')[0]
    end

    

end
