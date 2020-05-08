Rails.application.routes.draw do
  root "items#index"
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations'}
  resources :profiles
  resources :addresses
  resources :cards
  resources :items
end