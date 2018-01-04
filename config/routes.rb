Rails.application.routes.draw do
  root 'sessions#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'payments/express'
  get  'lands/search'
  get '/cart', to: 'carts#show', defaults: { id: 'current' }
  resources :carts
  resources :payments
  resources :users
  resources :sessions
  resources :lands
  resources :messages
  resources :conversations
  resources :line_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
