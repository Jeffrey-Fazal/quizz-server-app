class QuestionsController < ApplicationController
    # Will show all questions
    def index 
        questions = Question.all
        render json: questions, status: :ok
    end
    # Need to create route to only show book questions
    def bookindex
        books = Question.where(category:"books")
        render json: books, status: :ok 
    end
    # Allows a specific category to be pulled
    def index_category
        questions = Question.where(category: params[:name])
        render json: questions
      end
      
end