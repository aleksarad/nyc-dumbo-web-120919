Rails.application.routes.draw do
  resources :reviews, only: [:new, :create]
  resources :users, only: [:index, :show, :new, :create]
  resources :movies 

  patch "sessions/reset", to: "sessions#reset_session"
  #resources :movies, only: [:index, :show, :new, :create, :edit, :update]
  # resources :movies, except: [:delete]

  get "sessions/login", to: "sessions#new", as: "login"
  post "sessions/login", to: "sessions#create"
  delete "sessions", to: "sessions#destroy", as: "eliminate"

  # HTTP  |   URL   | Controller#Action  | Prefix
  # -------------------------------------------------
  # get '/movies', to: 'movies#index', as: 'movies
  # get '/movies/:id', to: 'movies#show', as: 'movie'
  # get '/movies/new', to: 'movies#new', as: 'new_movie'
  # post '/movies', to: 'movies#create'
  # get '/movies/:id/edit', to: 'movies#edit' as: 'edit_movie
  # patch '/movies/:id', to: 'movies#update'
  # delete '/movies/:id', to: 'movies#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
