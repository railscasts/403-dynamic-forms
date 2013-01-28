Store::Application.routes.draw do
  resources :product_types


  resources :products
  root to: 'products#index'
end
