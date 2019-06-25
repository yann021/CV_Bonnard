Rails.application.routes.draw do
  resources :developpements
  resources :trainings
  resources :experiences
  resources :homes
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
