Rails.application.routes.draw do
  
  get 'browse' => 'communities#browse'
  get 'about' => 'pages#about'
  get 'faqs' => 'pages#faqs'
  get 'support' => 'pages#support'
  get 'contact' => 'pages#contact'
  get 'privacy' => 'pages#privacy'
  get 'terms' => 'pages#terms'
  
  root to: 'communities#index'
  devise_for :users
  
  resources :communities do
    get 'page/:page', :action => :index, :on => :collection
  end
  
  resources :users
  resources :tags, only: [:index, :show]
  resources :categories, only: [:index, :show]
  
  

  
end
