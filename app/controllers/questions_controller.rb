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
end