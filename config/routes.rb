Rails.application.routes.draw do
  resources :authors
  resources :films
  resources :castfilms
  resources :comments
  resources :logs
  get '/comments/:id/approve', to: 'comments#approve', as: :approve_comment
  root "castfilms#index"
end
