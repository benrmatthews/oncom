Rails.application.routes.draw do
  resources :communities

  root to: 'communities#index'
  devise_for :users
  resources :users
end
