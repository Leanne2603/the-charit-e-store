Rails.application.routes.draw do
  get 'items/index'
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
  get '/appeals/:appeal_id/appeal_items', to: 'appeals#appeal_items', as: 'view_appeal_items'
  get 'appeals/:appeal_id', to: 'appeals#show', as: 'appeal'
  patch 'appeals/:appeal_id', to: 'appeals#update'
  get 'appeals/:appeal_id/edit', to: 'appeals#edit', as: 'edit_appeal'
  delete 'appeals/:appeal_id', to: 'appeals#destroy'

  get '/items', to: 'items#index'
  get '/items/new', to: 'items#new'
  post '/items', to: 'items#create'
  get 'items/:item_id', to: 'items#show', as: 'item'
  patch 'items/:item_id', to: 'items#update'
  get 'items/:item_id/edit', to: 'items#edit', as: 'edit_item'
  delete 'items/:item_id', to: 'items#destroy'

  post "/items/:item_id/buy", to: "items#buy", as: 'buy'
  get  "/items/:item_id/success", to: "items#success", as: "success"
  get "/items/:item_id/cancel", to: "items#cancel", as: "cancel"

  get "/admin/users", to: "admin#index"

  root to: 'home#index'
end
