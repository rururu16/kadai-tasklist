Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :tasks
  
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
  
  get 'signup', to: 'users#new'
  resources :users
end
