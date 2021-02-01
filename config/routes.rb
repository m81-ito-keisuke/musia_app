Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'tweets#index'
  resources :tweets do
    resources :tracks, only: [:new, :create, :edit, :update]
    resources :comments, only: [:create, :destroy]
    collection do
      get 'search'
      end
    end
  resources :users, only: :show
end

