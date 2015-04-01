Rails.application.routes.draw do
  resources :sizes

  get 'static_pages/home'

  get 'static_pages/help'

  resources :artcats

  resources :fonts

  resources :printjobs do
    collection do
      get 'update_shirts'
      get 'update_details'
      get 'mark_completed'
      get 'update_artworks'
      get 'update_art'
    end
  end

  resources :artworks do
    collection do
      get 'catalog'
      get 'update_catalog'
      #get 'update_artcat'
      #get 'delete_artcat'
      
    end
  end

  resources :shirts do
    member do
      get :update_size
      get :update_color
  end
  end

  resources :colors

  resources :mods do
    member do
      
      get :delete_size
      
    end
  end

  resources :shapes

  get 'printjobs/new'

  get 'artworks/update_catalog', as: 'update_catalog'

  
  get '/artworks/:id/update_artcat', to: 'artworks#update_artcat', as: 'update_artcat'
  
  get '/artworks/:id/delete_artcat', to: 'artworks#delete_artcat', as: 'delete_artcat'
  
 

  get 'printjobs/new2', as: 'new'



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

get 'printjobs/update_mods', :as => 'update_mods'
get 'printjobs/update_colors_sizes', :as => 'update_colors_sizes'


root 'static_pages#home'


end


