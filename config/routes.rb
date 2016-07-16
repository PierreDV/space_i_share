Rails.application.routes.draw do

  get 'welcome/index'

  root 'welcome#index'

  get 'users/new'

  get 'users/create'

  resources :users, only: [:new, :create, :destroy]

end
