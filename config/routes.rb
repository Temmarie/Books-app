Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root 'users#show'
end
