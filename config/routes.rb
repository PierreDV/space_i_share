Rails.application.routes.draw do

  root 'welcome#index'

  resources :sessions, only: [:new, :create, :destroy]

  resources :welcome

  resources :users, only: [:new, :create]

end
