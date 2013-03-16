Scrummer::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users

  root :to => 'home#index'

  resources :invites
  resources :projects
  resources :projects do
    member do
      post 'invite'
    end
  end

  get "project/index"

end
