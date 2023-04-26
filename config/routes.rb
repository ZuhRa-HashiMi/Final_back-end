Rails.application.routes.draw do

  resources :doctors

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :doctors 
    end
  end
end
