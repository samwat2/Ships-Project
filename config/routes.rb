Rails.application.routes.draw do
	devise_for :users
      
  resources :jobs
  resources :boats
  resources :boat_jobs
	resources :users, only: [:index, :show]
  root 'home#index'
end