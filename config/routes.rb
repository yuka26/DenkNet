Rails.application.routes.draw do
  get "/", to: "top#index"

  get "/mypage/mypage", to: "mypage#mypage"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
