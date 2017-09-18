Rails.application.routes.draw do
  root 'students#index'

  resources :students, only: [:index, :new, :create]
  resources :enrollments, only: [:index, :new, :create]
  resources :syncs, only: [:index, :create]
end
