Rails.application.routes.draw do
  resources :authors
  resources :films
  resources :castfilms
  resources :comments

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "castfilms#index"
end
