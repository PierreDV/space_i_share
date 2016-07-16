Rails.application.routes.draw do
  resources :welcome

  root 'welcome#index'

  resources :users, only: [:new, :create, :destroy]

end
