Rails.application.routes.draw do
  root to: "home#index"
  get "/store/:name" => "store#index"
  
  
  resources :products do
    member do 
      get :details
    end
  end


end
