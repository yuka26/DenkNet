Rails.application.routes.draw do
  get "/", to: "top#index"

  get "/folklore/new", to: "folklore#new"
  get "/folklore/new_category", to: "folklore#new_category"
  get "/folklore/new_icon", to: "folklore#new_icon"
  get "/folklore/new_confirm", to: "folklore#new_confirm"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
