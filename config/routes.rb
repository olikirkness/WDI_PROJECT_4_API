
  Rails.application.routes.draw do


  scope :api do
    resources :matches
    resources :leagues
    resources :users, except: [:create]
    resources :posts
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end
