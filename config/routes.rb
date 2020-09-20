Rails.application.routes.draw do
  # get 'tweets/new'
  # get 'tweets/create'
  # get 'tweets/index'
  # get 'tweets/show'
  # get 'tweets/edit'
  # get 'tweets/update'
  # get 'tweets/destroy'
  # get 'users/index'
  # get 'users/show'
  # get 'users/edit'
  # get 'users/update'
  devise_for :users
  resources :tweets
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
