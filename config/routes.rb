Rails.application.routes.draw do
  devise_for :users
  resources :doctors
  root "doctors#index"

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :doctors 
    end
  end
end
