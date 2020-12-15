Rails.application.routes.draw do
  resources :user_wish_books
  resources :user_lib_books
  resources :books
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
