Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get 'users/show'
  devise_for :users
  get 'external', to: 'books#external'
  resources :books do
    resources :reviews
  end
  root 'users#show'
end
