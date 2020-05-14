Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, :controllers => {
  #   :registrations => 'users/registrations',
  #   :sessions => 'users/sessions',
  #   :passwords => 'users/passwords'
  # }
  resources :users, only: [:edit, :update, :destroy]
end
