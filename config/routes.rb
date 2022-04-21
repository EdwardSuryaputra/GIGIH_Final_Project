Rails.application.routes.draw do
  resources :order_details
  resources :orders
  resources :customers
  resources :categories
  root "orders#index"
  resources :menus
  get "report", to: "report#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
