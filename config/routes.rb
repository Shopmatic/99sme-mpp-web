Rails.application.routes.draw do
  root to: "home#index"
  get "/store/:name" => "store#index"
  
end
