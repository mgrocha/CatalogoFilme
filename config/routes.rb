Rails.application.routes.draw do
  resources :authors
  resources :films

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "films#index"
end
