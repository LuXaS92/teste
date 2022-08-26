Rails.application.routes.draw do
  root 'posts#index'

  resources :posts do
    get :serch, on: :collection
  resources :comments, only: %i[create]
end
