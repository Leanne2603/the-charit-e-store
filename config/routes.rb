Rails.application.routes.draw do
  get 'appeals/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/regions', to: 'regions#index'
  get '/regions/new', to: 'regions#new'
  post '/regions', to: 'regions#create'
  get 'regions/:region_id', to: 'regions#show', as: 'region'
  patch 'regions/:region_id', to: 'regions#update'
  get 'regions/edit/:region_id', to: 'regions#edit', as: 'edit_region'
  delete 'regions/:region_id', to: 'regions#destroy'

  
  root to: 'home#index'
end
