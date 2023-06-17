Rails.application.routes.draw do
  resources :tickets
  resources :comments
  resources :incidents
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
