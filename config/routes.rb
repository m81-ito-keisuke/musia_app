Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'musics#index'
  resources :musics do
    resources :tracks, only: [:new, :create, :edit, :update, :destroy]
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
    resources :orders, only: [:index, :create]
    collection do
      get 'search'
      end
    end
  resources :users do
  member do
    get :favorites, :following, :followers
  end
end

resources :relationships, only: [:create, :destroy]

end

