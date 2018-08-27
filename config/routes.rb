Rails.application.routes.draw do

  #DEV ONLY, TO COMMENT IN PRODUCTION
  get 'seeds', to: "seeds#index"
  get 'components', to: "seeds#components"
  get 'devshow/:id', to: "groups#devshow", as: 'devshow'

  root to: 'pages#home'

  devise_for :users

  get 'profile', to: "users#profile", as: "profile"

  resources :users, only: [:show, :update] do
  end

  resources :games, only: [:show]

  resources :groups, only: [:show] do
    resources :memberships, only: [:new, :create] do
      member do
        patch :accept
        patch :decline
      end
    end
    resources :events, only: [:create, :edit, :update] do
      member do
        patch :confirm
        patch :cancel
      end
      resources :participations, only: [:create, :update]
    end
  end
end
