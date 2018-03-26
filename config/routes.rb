Rails.application.routes.draw do
  # get 'posts/index'

  # get 'posts/show'

  # get 'posts/new'

  # get 'posts/edit'

  # get 'users/index'

  # get 'users/show'

  # get 'users/new'

  # get 'users/edit'

  root 'welcome#index'

  post '/signin', to: "sessions#create"
  get 'signin', to: "sessions#new"

get 'logout', to: "sessions#destroy"
  resources :users   
  resources :posts
  resources :sessions
  resources :comments
end
