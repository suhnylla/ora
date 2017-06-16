Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#homepage'

  get 'users/show/:id' => 'users#show', as: 'profile_page'

  get 'braintree/new'
  post 'braintree/checkout'

  get 'coinbase/new'
  post 'coinbase/checkout'
  get "/auth/:provider/callback" => "sessions#create_from_omniauth"

  resources :offers
  resources :requests
end
