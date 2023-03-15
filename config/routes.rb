Rails.application.routes.draw do
  devise_for :users
  get 'admin', to: 'admin#index'
  get 'admin/items'
  get 'admin/users'
  match '/users',   to: 'users#index',   via: 'get'
  get 'admin/show_orders'
  root "items#index"
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
