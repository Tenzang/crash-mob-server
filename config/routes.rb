Rails.application.routes.draw do
<<<<<<< HEAD
  root to: "static#home"
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
=======
  get 'users/new'

  resources :characters, :only => [:new, :create, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
>>>>>>> 633a41910719851bdaac7b6d8586d949912a08d3
end
