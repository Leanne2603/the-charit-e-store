Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/regions', to: 'regions#index'
  get '/regions/new', to: 'regions#new'
  post '/regions', to: 'regions#create'
  get 'regions/:region_id', to: 'regions#show', as: 'region'
  patch 'regions/:region_id', to: 'regions#update'
  get 'regions/edit/:region_id', to: 'regions#edit', as: 'edit_region'
  delete 'regions/:region_id', to: 'regions#destroy'

  get '/appeals', to: 'appeals#index'
  get '/appeals/new', to: 'appeals#new'
  post '/appeals', to: 'appeals#create'
  get 'appeals/:appeal_id', to: 'appeals#show', as: 'appeal'
  patch 'appeals/:appeal_id', to: 'appeals#update'
  get 'appeals/edit/:appeal_id', to: 'appeals#edit', as: 'edit_appeal'
  get  "/appeals/:appeal_id/error", to: "appeal#error", as: "error"
  delete 'appeals/:appeal_id', to: 'appeals#destroy'

  root to: 'home#index'
end
