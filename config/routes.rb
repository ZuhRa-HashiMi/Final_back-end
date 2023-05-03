Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: { sessions: :sessions },
                       path_names: { sign_in: :login }

  resource :user, only: [:show, :update]
  end
  resource :user, only: [:show, :update]

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users
  resources :doctors
  resources :appointments
  root "doctors#index"

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :doctors 
      resources :appointments
    end
  end
end
