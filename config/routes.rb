Rails.application.routes.draw do
  resources :authors
  resources :films
  resources :comments
  resources :logs, only: [:index]
  get '/comments/:id/approve', to: 'comments#approve', as: :approve_comment
  root "films#index"
end
