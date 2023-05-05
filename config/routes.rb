Rails.application.routes.draw do
 
  resources :sessions, only: [:create]
  resources :users

  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  
  root to: "static#home"
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :doctors 
      resources :appointments
    end
  end
end
