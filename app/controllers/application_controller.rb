class ApplicationController < ActionController::API

    def authenticate
        # byebug
        
        auth_header = request.headers["Authorization"]
        
        token = auth_header.split.last
        
        payload = JWT.decode(token, 'my$ecretK3y', true, { algorithm: 'HS256' })[0]
        
        @current_user = User.find_by(id: payload["user_id"])
    rescue
         render json: { errors: ["unauthorized"] }, status: :unauthorized
        
    end

end
