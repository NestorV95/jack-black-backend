Rails.application.routes.draw do
  resources :dealer_hands
  resources :dealers
  resources :games
  resources :user_hands
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
