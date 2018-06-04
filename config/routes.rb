Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  # get '/new_user', to: 'users#new'
  # post '/new_user', to: 'users#create'
  # get '/new_event', to: 'events#new'
  # post '/events', to: 'events#create'
  # get '/event', to: 'events#show'




  # get '/events', to: 'events#index'
  get '/user_events', to: 'users#show'
  resources :users
  resources :events
end
