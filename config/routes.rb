# frozen_string_literal: true

Rails.application.routes.draw do
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'

  resources :comments, except: %i[new edit]
  resources :posts, except: %i[new edit]
  resources :examples, except: %i[new edit]
  resources :users, except: %i[new edit]
end
