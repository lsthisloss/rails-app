Rails.application.routes.draw do
  resources :orders_descriptions
  resources :orders
  get 'cart', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  
  authenticated :user, ->(user) { user.admin? } do
  get 'admin', to: 'admin#index'
  get 'admin/items'
  get 'admin/users'
  get 'admin/show_orders'
  match 'users/edit/:id', to: 'registrations#edit',  via: 'get'
  end

  devise_for :users
  match '/users',   to: 'users#index',   via: 'get'
  root "items#index"
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
