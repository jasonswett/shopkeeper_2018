Rails.application.routes.draw do
  resources :customers
  resources :inventory_adjustments
  resources :products

  root 'products#index'
end
