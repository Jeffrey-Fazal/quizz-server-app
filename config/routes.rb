Rails.application.routes.draw do
  # renders plain text
  root to: "pages#index"

  # Restful routes for all users
  resources :users

  # Scores endpoints (show scores and update them only)
  resources :scores, only: [:update, :index]

  # User scores
  get 'users/:id/scores', to: 'users#show_scores'
  get 'users/scores', to: 'users#index_scores'

  # Route for login authentication
  post '/auth/login', to: 'authentication#login'

  # Resful routes for all questions
  resources :questions  

end
