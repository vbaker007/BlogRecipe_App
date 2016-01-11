Rails.application.routes.draw do
  #get 'articles/index'

  #get 'articles/show'

  #get 'articles/new'

  #get 'welcome/index'
  #root 'welcome/index'

  #get '/recipes', to: 'recipes#index'

  root 'welcome#index'
  get 'welcome/AboutUs'
  get 'welcome/twitter'
  #get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/twitter' => 'sessions#create'
  #get "recipes/twitter/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
  resources :articles do 
    resources :comments
  end

  resources :recipes do
    member do
      post 'like'
    end
      resources :reviews, only: [:new, :create, :show]
  end
  
  resources :chefs, except: [:new, :destroy]
  
  get '/register', to: 'chefs#new'
  
  get '/login', to: "logins#new"
  post '/login', to: "logins#create"
  get '/logout', to: "logins#destroy"
  

  resources :styles, only: [:new, :create, :show, :index]
  resources :ingredients, only: [:new, :create, :show, :index]
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

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
