  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  Rails.application.routes.draw do
    devise_for :users
    root to: "pages#home"
    resources :users, only: [:show] do
      resources :followings, only: [:index, :new, :create, :destroy]
    end
    resources :forums do
        resources :ratings
        resources :posts, only: [:new, :create, :show] do
        resources :comments, only: [:new, :create, :show]
        end
    end
    resources :lists do
    resources :bookmarks, only: [:new, :create]
    resources :ratings, only: [:create]
  end
    resources :forums, only: [:destroy]
    resources :ratings, only: [:destroy]
    resources :posts, only: [:destroy]
    resources :comments,only: [:destroy]
    resources :bookmarks, only: [:destroy]
  end
