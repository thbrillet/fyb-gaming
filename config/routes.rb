Rails.application.routes.draw do
  get 'seeds', to: "seeds#index"
  get 'components', to: "seeds#components"
  get 'devshow/:id', to: "groups#devshow", as: 'devshow'
  devise_for :users
  root to: 'pages#home'

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
      resources :objectives, only: [:create, :update]
    end
  end
end
