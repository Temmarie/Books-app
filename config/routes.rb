Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get 'users/show'
  devise_for :users
  resources :books
  root 'users#show'
end
