class ScoresController < ApplicationController
    def update
      score = Score.find(params[:id])
      if score.update(score_params)
        render json: score
      else
        render json: { errors: score.errors }, status: :unprocessable_entity
      end
    end

    def index
        scores = Score.all
        render json: scores
      end
  
    private
  
    def score_params
        { score: params[:score] }
      end
      
  end
  