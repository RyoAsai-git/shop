Rails.application.routes.draw do
  mount_devise_token_auth_for "User", at: "auth", controllers: {
                                        registrations: "auth/registrations",
                                      }

  resources :users, only: ["show"]
  resources :shops, only: ["index"]
  resources :brands, only: ["index"] do
    post "user/:user_id" => "brands#likes", as: "likes"
  end
end
