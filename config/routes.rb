Rails.application.routes.draw do
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
