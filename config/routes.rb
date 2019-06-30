Rails.application.routes.draw do

  root to: 'homes#index'

  resources :developements do
    resources :avadevs, only: [:create]
  end

  resources :contacts, only: [:new, :create]

  resources :trainings do
    resources :avatrains, only: [:create]
  end

  resources :experiences do
    resources :avaexpes, only: [:create]
  end

  resources :homes do
    resources :avahomes, only: [:create]
  end

  devise_for :users do
    resources :avatars, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
