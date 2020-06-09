Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  resource :orders, only: [:update, :show]
  root to: "products#index"

  get '/checkout', to: "orders#checkout"
end
