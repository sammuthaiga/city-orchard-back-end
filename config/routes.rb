Rails.application.routes.draw do
  resources :fruits, only: [:index, :show,  :create, :update, :destroy]
  resources :clients, only: [:index, :show,  :create, :update, :destroy]
  resources :farmers, only: [:index, :show,  :create, :update, :destroy]
  resources :users, only: [:index, :show, :create, :update, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"
end
