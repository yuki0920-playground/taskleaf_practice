Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  namespace :admin do
    resources :users
    # get 'users/new'
    # get 'users/edit'
    # get 'users/show'
    # get 'users/index'
  end
  resources :tasks
  root to: 'tasks#index'
  # get 'index/show'
  # get 'index/new'
  # get 'index/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
