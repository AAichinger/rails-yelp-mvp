Rails.application.routes.draw do
  get 'restaurants/name'
  get 'restaurants/address'
  get 'restaurants/phone_number'
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  post '/restaurants', to: 'restaurants#create'

  resources :restaurants do
    resources :reviews, only: [:new, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  end
end
