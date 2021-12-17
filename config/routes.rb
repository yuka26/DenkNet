Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'homes#top'

  resources :users, only:[:index, :show, :edit, :update] do
    member do
      get '/genre/:category_id', to: 'users#genre', as: 'genre'
    end
    resource :matchings, only: [:index, :new, :create, :destroy] do
      member do
        get '/index', to: 'matchings#index', as: 'index'
        get '/confirm/:successor_id', to: 'matchings#confirm', as: 'confirm'
        get '/approve/:successor_id', to: 'matchings#approve', as: 'approve'
        get '/reject/:successor_id', to: 'matchings#reject', as: 'reject'
      end
    end
  end
end
