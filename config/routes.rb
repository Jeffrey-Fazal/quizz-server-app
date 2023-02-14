Rails.application.routes.draw do
  root to: "pages#index"

  # Restful routes for all users
  resources :users

  get '/verify', to: 'users#verify_token'

  # Clean routes
  resources :users do
    get '/verify', to: 'users#verify_token', on: :collection
    member do
      get :user_score
    end
  end
  
  # Scores endpoints (show scores and update them only)
  resources :scores, only: [:update, :index]

  # User scores
  get 'users/:id/scores', to: 'users#show_scores'
  get 'users/scores', to: 'users#index_scores'

  # Route for login authentication
  post '/auth/login', to: 'authentication#login'

  # Endpoints for questions
  resources :questions  
  get '/category/:name', to: 'questions#index_category'
end
