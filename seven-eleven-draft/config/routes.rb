Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
	root 'products#index'  
	get 'products/import', to: 'products#import', as: 'products_import'


	post 'orders/add', to: 'orders#add', as: 'orders_add'
	get 'orders/cart', to: 'orders#cart', as: 'orders_cart'
	resources :products

	resources :orders
end
