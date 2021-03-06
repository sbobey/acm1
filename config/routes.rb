Acm1::Application.routes.draw do
  


  resources :rounds

  resources :surgs

  resources :locs

  resources :addps

  resources :provs

  resources :crnas



  get "/axle" => "axle#grids"
  get "/axle/text" => "axle#text"
  get "/axle/abstract_colors" => "axle#abstract_colors"
  get "/axle/semantic_colors" => "axle#semantic_colors"
  get "/axle/widgets" => "axle#widgets"
  get "/axle/forms" => "axle#forms"
  get "/axle/buttons" => "axle#buttons"
  get "/axle/widgets/srp_header" => "axle#widgets_srpheader"
 
  match "/users/login"        => "users#login"
  match "/users/auth"         => "users#auth"
  match "/users/logout"		  => "users#logout"
  match "/users/destroy"	  => "users#destroy"
  match "/cases/menu"		  => "cases#menu"
  match "/cases/addcase"	  => "cases#addcase"
  match "/cases/admin"	      => "cases#admin"
  match "/cases/setuser"	  => "cases#setuser"
  match "/cases/setsurg"	  => "cases#setsurg"
  match "/cases/setprov"	  => "cases#setprov"
  match "/cases/setcrna"	  => "cases#setcrna"
  match "/cases/setloc"		  => "cases#setloc"
  match "/cases/setview"	  => "cases#setview"
  match "/cases/viewcase"	  => "cases#viewcase"
  match "/cases/edit"		  => "cases#edit"
  match "/cases/update"		  => "cases#update"
  match "/scans/addscan"	  => "scans#addscan"
  match "/scans/saveaspdf"	  => "scans#saveaspdf"
  match "/scans/setscan"	  => "scans#setscan"
  match "/scans/viewscan"	  => "scans#viewscan"
  
  match "/scans/upload"		  => "scans#upload"
  match "/scans/uploadc"	  => "scans#uploadc"
  
  
  
  resources :cases
  resources :scans
  resources :users
 
  root :to => "users#login"



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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
