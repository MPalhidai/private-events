Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/user_events', to: 'users#show'
  resources :users
  resources :events
  get 'appointments/create'
  resources :appointments, only: [:create, :destroy]
end
