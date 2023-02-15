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
      user_scores = User.joins(:scores).group(:id).pluck(:username, 'SUM(scores.score)')
    
      # The `pluck` method returns an array of arrays, where each sub-array contains
      # the username and the sum of the user's scores. We can use this to build a hash
      # that maps each username to their score.
      user_score_hash = Hash[user_scores.map { |username, score| [username, score] }]
    
      render json: user_score_hash
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
  