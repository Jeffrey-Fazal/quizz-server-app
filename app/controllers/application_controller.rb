class ApplicationController < ActionController::API
    include JsonWebToken

    before_action :authenticate_request

    private
        # def authenticate_request
        #     header = request.headers["Authorization"]
        #     header = header.split(" ").last if header
        #     decoded = jwt_decode(header)
        #     @current_user = User.find(decoded["user_id"])
        # end

        def authenticate_request
            header = request.headers["Authorization"]
            header = header.split(" ").last if header.present?
            if header.present?
                decoded = jwt_decode(header)
                @current_user = User.find(decoded["user_id"])
            else
                render json: { error: "Authorization header is missing" }, status: :unauthorized
            end
        end
end
