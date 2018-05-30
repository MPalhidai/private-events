Rails.application.routes.draw do
  get 'events/show'

  get 'events/create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :events

  get 'user_events' => 'users#show'
end
