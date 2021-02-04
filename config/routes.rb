Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'musics#index'
  resources :musics do
    resources :tracks, only: [:new, :create, :edit, :update, :destroy]
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
    collection do
      get 'search'
      end
    end
  resources :users do
  member do
    get :favorites
  end
end
end

