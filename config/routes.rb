Rails.application.routes.draw do
  get 'admin', to: 'admin#index'
  get 'admin/items'
  get 'admin/users'
  get 'admin/show_orders'
  root "items#index"
  devise_for :users
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
