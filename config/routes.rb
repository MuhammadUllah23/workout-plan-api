Rails.application.routes.draw do
  resources :sessions
  
  namespace :api do
    namespace :v1 do
      resources :users
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
    end
  end
  resources :exercises
  resources :workouts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
