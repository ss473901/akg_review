Rails.application.routes.draw do
  root 'homes#top'
  devise_for :users
  resources :albums, only: [:index, :show]
end