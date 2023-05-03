Rails.application.routes.draw do
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
