Rails.application.routes.draw do
  root to: "home#index"
  get "/store/:name" => "store#index"
  get "/pages/terms" => "pages#terms"
  get "/pages/privacy-policy" => "pages#privacy"
  resources :products do
    member do
      get :details
    end
  end
  
end
