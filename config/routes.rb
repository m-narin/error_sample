Rails.application.routes.draw do
  get 'tweets/index'
  get 'tweets/new'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :tweets
  root 'tweets#index'

end
