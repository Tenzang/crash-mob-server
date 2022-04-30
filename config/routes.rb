Rails.application.routes.draw do
  root to: "static#home"
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  get 'users/new'
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :characters, :only => [:new, :create, :update, :destroy]
end
