Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    registrations: 'auth/registrations'
  }

  resources :mypages, only: ['show']
  resources :shops, only: ['index']
  resources :brands, only: ['index'] do
    # post 'likes', to: 'likes#create', as: 'like_brand'
    post 'likes', to: 'likes#like_brand'
  end
end
