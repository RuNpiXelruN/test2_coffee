Rails.application.routes.draw do
  get 'dashboard/index'

  root 'home#index'
  resources :profiles

  resource :session, only: [:new, :create, :destroy]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
