Rails.application.routes.draw do
  
  resources :categories

  get 'browse' => 'communities#browse'
  get 'about' => 'pages#about'
  get 'faqs' => 'pages#faqs'
  get 'support' => 'pages#support'
  get 'contact' => 'pages#contact'
  get 'privacy' => 'pages#privacy'
  get 'terms' => 'pages#terms'
  
  resources :communities
  resources :tags
  resources :categories
  
  root to: 'communities#index'
  devise_for :users
  resources :users
end
