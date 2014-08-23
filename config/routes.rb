Rails.application.routes.draw do
  root to: 'home#index'

  get '/dashboard' => 'dashboard#index', as: :dashboard
  get '/tutorial' => 'dashboard#tutorial', as: :tutorial
  get '/contact' => 'dashboard#contact', as: :contact
  get '/about' => 'dashboard#about', as: :about
  # get '/credentials' => 'dashboard#about', as: :about

  # get '/tutorial' => 'dashboard#tutorial', as: :tutorial
  delete "sites/:id" => "dashboard#destroy", as: :site
  post "/dashboard" => "dashboard#create", as: :new
  post '/update' => 'dashboard#update', as: :update

  # patch "/dashboard/:id" => "dashboard#update"
  get '/sign_in' => "sessions#new", as: :new_session
  post '/sign_in/verify' => "sessions#verify", as: :verify
  get '/sign_up' => "sessions#register", as: :sign_up
  post '/sign_up/create' => "sessions#create_user", as: :create_user
  delete '/session' => "sessions#destroy", as: :sign_out
end
