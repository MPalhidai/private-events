Rails.application.routes.draw do
  root to: 'sessions#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  get '/user_events', to: 'users#show'
  resources :users, except: [:index]
  resources :events do
    resources :appointments, only: [:create, :destroy]
  end
end
