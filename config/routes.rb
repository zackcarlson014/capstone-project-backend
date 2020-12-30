Rails.application.routes.draw do
 
  namespace :api do
    namespace :v1 do
      resources :reserved_messages
      resources :reserved_books
      resources :comment_likes
      resources :comments
      resources :user_wish_books
      resources :user_lib_books
      resources :books
      resources :users
      post '/auth', to: 'auth#create'

      get '/current_user', to: 'auth#show'
    end
  end
end
