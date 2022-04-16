Rails.application.routes.draw do
  resources :customers
  resources :categories
  root "menus#index"
  resources :menus
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
