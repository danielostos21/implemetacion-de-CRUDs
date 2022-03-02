Rails.application.routes.draw do
  resources :projects
  resources :statuses
  resources :clients
  resources :companies
  resources :cities
  resources :states
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
