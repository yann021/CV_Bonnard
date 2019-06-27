Rails.application.routes.draw do

  root to: 'homes#index'

  resources :developements

  resources :contact, only: [:new, :create]

  resources :trainings

  resources :experiences

  resources :homes

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
