Rails.application.routes.draw do
  root to: 'home#index'
  get 'store', to: 'store#index'
  get 'products', to: 'products#index'
end
