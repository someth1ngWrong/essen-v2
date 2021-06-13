Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  resources :posts #, only: [:show, :index]
  resources :ingredients, only: :index
  resources :categories, only: :index
  resources :users, except: [:new, :create]

  namespace :admin do
    resources :categories
    resources :ingredients
    resources :users
    resources :posts do
      resources :post_ingredients
    end
  end

  resources :posts do
    resources :post_ingredients
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
