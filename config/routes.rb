Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :posts,    only: [:new, :create, :index]
  root   'posts#index'
  get 	 '/signin',  to: 'sessions#new'
  delete '/signout', to: 'sessions#destroy' 
end
