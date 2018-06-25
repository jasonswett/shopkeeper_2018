Rails.application.routes.draw do
  resources :inventory_adjustments
  resources :products

  root 'products#index'
end
