Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/vendors", to: "vendors#index"
  get "/vendors/:id", to: "vendors#show"
  get "/sweets", to: "sweets#index"
  get "/sweets/:id", to: "sweets#show"
  
end
