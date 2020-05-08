Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations'}
  resources :profiles
  resources :addresses
  # resources :profiles, only:[:new] do
  #   resources :addresses, only:[:new]
  # end
  resources :cards
end