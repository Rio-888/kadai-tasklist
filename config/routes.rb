Rails.application.routes.draw do
  root to: 'tasks#index'

  resources :tasks
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  get 'detail', to: 'tasks#show'
  get 'newtask', to: 'tasks#new'
  resources :users, only: [:index, :show, :new, :create]
  
end
