Egarage::Application.routes.draw do
  root :to => 'defaults#index'  
  
  match 'hola' => 'garageSessions#new', :as => 'login'
  match 'adios' => 'garageSessions#destroy', :as => 'logout'
  match 'perfil' => 'garages#edit', :as => 'profile'
  match 'registro' => 'garages#new', :as => 'register'
  match 'mi-garaje' => 'garages#show', :as => 'my_garage'
  match 'search_dni_cliente' => 'owners#search_dni', :as => 'search_dni_cliente'
  match 'search_matricula_coche' => 'cars#search_plate', :as => 'search_matricula_coche'
  match 'search_marca_coche' => 'cars#search_plate', :as => 'search_marca_coche'
  match 'search_modelo_coche' => 'cars#search_plate', :as => 'search_modelo_coche'
  match 'log' =>  'history_records#index', :as => 'log_coche'
  match 'about' => 'defaults#about', :as => 'about'
  resources :garages
  resources :garage_sessions
  resources :owners
  resources :entries

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
