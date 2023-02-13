class UsersController < ApplicationController
    # Controls for managing users via the API
    # Not needed: skip_before_action :authenticate_request, only: [:create]
    before_action :set_user, only: [:show, :update, :destroy]

    # GET /users
    def index
        @users = User.all
        render json: @users, status: :ok
    end

    # GET /users/{username}
    def show
        render json: @user, status: :ok
    end

    # POST /users
    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user, status: :created
        else
            render json: { errors: @user.errors.full_messages },
            status: :unprocessable_entity
        end
    end

    # PUT /users/{username}
    def update
        if @user.update(user_params)
            render json: @user, status: :ok
        else
            render json: { errors: @user.errors.full_messages },
            status: :unprocessable_entity
        end
    end

    # DELETE /users/{username}
    def destroy
        @user.destroy
        render json: { message: "User was successfully destroyed." }, status: :ok
    end

    # Action to find a specific users scores
    def show_scores
        user = User.find(params[:id])
        render json: { scores: user.scores }
    end
    # Action for all scores (to be used in leaderboard)
    def index_scores
        users = User.all
        scores = users.map { |user| { id: user.id, name: user.name, scores: user.scores } }
        render json: scores
      end
      

    private
        def user_params
            params.permit(:username, :email, :password)
        end

        def set_user
            @user = User.find(params[:id])
        end

        def score_params
            params.require(:score).permit(:score)
        end
end
