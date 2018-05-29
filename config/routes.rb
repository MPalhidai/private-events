Rails.application.routes.draw do
  resources :users
  resources :events

  get 'user_events' => 'users#show'
end
