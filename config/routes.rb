Rails.application.routes.draw do
  # get 'sessions/new'

  # devise_for :users
  # get 'dashboard/index'

  # get 'home/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root to: 'home#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
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


  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
