Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update]
      resources :products, only: [:index, :show, :create, :update]
      resources :user_products
      post '/sessions', to: "sessions#create"
    end
  end
end
