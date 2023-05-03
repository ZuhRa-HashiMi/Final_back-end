Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    devise_for :users, controllers: { sessions: :sessions },
                       path_names: { sign_in: :login }

    resource :user, only: [:show, :update]
  end

  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :doctors 
      resources :appointments
    end
  end
end
