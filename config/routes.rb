Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"

  # get '/prototypes/:id', to:'prototypes#show',as:'prototype'

  resources :prototypes  do
    resources :comments, only: :create
  end
  resources :users, only: [:edit, :update, :show]

end
