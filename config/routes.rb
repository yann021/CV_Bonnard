Rails.application.routes.draw do

  root to: 'homes#index'

  resources :developements do
    resources :developement_avatars, only: [:create]
  end

  resources :contacts, only: [:new, :create]

  resources :trainings do
    resources :training_avatars, only: [:create]
  end

  resources :experiences do
    resources :experience_avatars, only: [:create]
  end

  resources :homes do
    resources :home_avatars, only: [:create]
  end

  devise_for :users do
    resources :avatars, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
