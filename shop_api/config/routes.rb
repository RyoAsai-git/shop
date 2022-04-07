Rails.application.routes.draw do
  mount_devise_token_auth_for "User", at: "auth", controllers: {
                                        registrations: "auth/registrations",
                                      }

  resources :users, only: ["show"]
  resources :shops, only: ["index", "show"] do
    post "user/:user_id" => "shops#likes", as: "likes"
    delete "user/:user_id" => "shops#delete_likes", as: "delete_likes"
  end

  resources :brands, only: ["index", "show"] do
    post "user/:user_id" => "brands#likes", as: "likes"
    delete "user/:user_id" => "brands#delete_likes", as: "delete_likes"
  end
end
