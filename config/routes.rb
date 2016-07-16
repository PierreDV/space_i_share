Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  resources :welcome

  root 'welcome#index'

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create]

end
