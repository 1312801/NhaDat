Rails.application.routes.draw do
  root 'sessions#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  resources :users
  resources :sessions
  resources :lands
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
