# frozen_string_literal: true

Rails.application.routes.draw do
  get 'homes/top'
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
  root 'homes#top'
  resources :tweets
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
