class ScoresController < ApplicationController
    # Ability to update scores by specifiying a user in the URL and using the value score in the body
    def update
      score = Score.find(params[:id])
      if score.update(score_params)
        render json: score
      else
        render json: { errors: score.errors }, status: :unprocessable_entity
      end
    end
    # Allows all scores to be seen
    def index
        scores = Score.all
        render json: scores
    end
    # Ability to lookup scores for a specific user
    def show
    user = User.find(params[:user_id])
    score = user.score
    render json: score
    end
      
    private
  
    def score_params
        { score: params[:score] }
      end
      
  end
  