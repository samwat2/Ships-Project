Rails.application.routes.draw do
  get 'boat_jobs/index'
  get 'boat_jobs/new'
  get 'boat_jobs/create'
  get 'boat_jobs/show'
  get 'boat_jobs/edit'
  get 'boat_jobs/update'
  get 'boat_jobs/destroy'
  get 'jobs/index'
  get 'jobs/new'
  get 'jobs/create'
  get 'jobs/show'
  get 'jobs/edit'
  get 'jobs/update'
  get 'jobs/destroy'
  get 'boat/index'
  get 'boat/new'
  get 'boat/create'
  get 'boat/show'
  get 'boat/edit'
  get 'boat/update'
  get 'boat/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
	resources :users, only: [:index, :show]
  root 'home#index'
end
