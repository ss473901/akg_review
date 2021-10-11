Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  resources :albums, only: [:index, :show] do
    resources :reviews, only: [:index, :create]
  end
end
