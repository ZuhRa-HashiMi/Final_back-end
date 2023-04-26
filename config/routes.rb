Rails.application.routes.draw do
  get 'doctors/index'
  get 'doctors/new'
  get 'doctors/creaate'
  get 'doctors/destroy'
  get 'user/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # root "home#index"
end
