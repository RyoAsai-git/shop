Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    registrations: 'auth/registrations'
  }

  resources :mypages, only: ['index', 'show']
  resources :shops, only: ['index', 'show']
  resources :brands, only: ['index']
end
