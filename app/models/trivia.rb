  class Trivia < ApplicationController
    def index
      @trivias = Trivia.all
      render json: @trivias
    end
    def create
      @trivia = Trivia.new(trivia_params)
  
      if @trivia.save
        render json: @trivia, status: :created
      else
        render json: @trivia.errors, status: :unprocessable_entity
      end
    end

    validates :question, :option1, :option2, :option3, :option4, :correct_answer, presence: true
  
    private
  
    def trivia_params
      params.require(:question).permit(:content, :category)
    end
  end
  