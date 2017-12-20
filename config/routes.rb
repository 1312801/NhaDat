Rails.application.routes.draw do
  root 'sessions#index'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post "/hook" => "users#hook"
  get 'payments/express'
get '/cart', to: 'carts#show', defaults: { id: 'current' }
  resources :payments
  resources :users
  resources :sessions
  resources :lands
  resources :line_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
