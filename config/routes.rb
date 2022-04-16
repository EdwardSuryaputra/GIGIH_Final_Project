Rails.application.routes.draw do
  resources :categories
  root "menus#index"
  resources :menus do
    resources :categories
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
