Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: { sessions: :sessions },
                       path_names: { sign_in: :login }

  resource :user, only: [:show, :update]
  end
  resource :user, only: [:show, :update]
  resources :doctors
  root "doctors#index"

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :doctors 
    end
  end
end
