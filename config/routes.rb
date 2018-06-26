Rails.application.routes.draw do
  resources :line_items
  resources :sales
  resources :customers
  resources :inventory_adjustments
  resources :products

  root 'products#index'
end
