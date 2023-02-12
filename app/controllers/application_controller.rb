class ApplicationController < ActionController::API
    include JsonWebToken
    # Will need to add authentication for user actions
    # Decide on how JSON API endpoints should be handled 
    # before_action :authenticate_request

    private
        def authenticate_request
            header = request.headers["Authorization"]
            header = header.split(" ").last if header.present?
            if header.present?
                decoded = jwt_decode(header)
                @current_user = User.find(decoded["user_id"])
            else
                # Will need to find a way to use this function only for confidential user data 
                render json: { error: "Authorization header is missing" }, status: :unauthorized
            end
        end
end
