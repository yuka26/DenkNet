Rails.application.routes.draw do
  root to: 'top#index'
  get 'sessions/new'
  get "/", to: "top#index"
  get "/signup", to: "top#signup"

  resources :folklores, only: [:new, :create] do
    collection do
      post :new_category
      post :new_icon
      post :new_confirm
    end
  end
end
