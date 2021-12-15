Rails.application.routes.draw do
  get "/", to: "top#index"

  get "/successor/new", to: "successor#new"
  
  get "/successor/new_confirmation", to: "successor#new_confirmation"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
