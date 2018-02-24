Rails.application.routes.draw do
  get 'posts/index'

  get 'posts/show'

  get 'posts/new'

  get 'posts/edit'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  root 'welcome#index'

  root_to 'comments#index'
  resources :comments, only: [:index, :new, :create]
end
