Rails.application.routes.draw do
  # User Authentication  
  resources :users
  post '/auth/login', to: 'authentication#login'
  # Endpoints for questions
  # See http://localhost:3000/questions for all questions index
  # ^ index can be used to show all quizz questions in reactjs
  resources :questions
  
end
