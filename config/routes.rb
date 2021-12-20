Rails.application.routes.draw do
  root 'events#index'
  devise_for :users
  resources :events
  resources :invitations
  put '/event/:id/attend', to: 'events#attend', as: 'attend'
  get '/user/:id', to: 'users#show', as: 'upcoming_events'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
