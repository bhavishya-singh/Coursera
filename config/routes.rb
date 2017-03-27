Rails.application.routes.draw do
    
  get 'lectures/:course_id' => 'lectures#index'

  post 'lectures' => 'lectures#create'

  get 'lectures/:course_id/new' => 'lectures#new'

  get 'lectures/:course_id/:id/edit' => 'lectures#edit'

  patch 'lectures/:id/update' => 'lectures#update', :as => 'lecture'

  put 'lectures/:id/update' => 'lectures#update'

  delete 'lectures/:id/delete' => 'lectures#delete'

  get 'lectures/:id/delete' => 'lectures#delete'

  get 'lectures/:id/show' => 'lectures#show'

  get '/courses/:cat_id' => 'courses#index'

  get '/courses/:cat_id/new' => 'courses#new'

  post '/courses/create' => 'courses#create', as: "courses"

  get '/courses/:cat_id/:id/edit' => 'courses#edit'

  patch '/courses/:id/update' => 'courses#update' ,as: 'course'

  put '/courses/:id/update' => 'courses#update'

  delete '/courses/:cat_id/delete' => 'courses#delete' 

  get '/categories' => 'categories#index'

  post '/categories' => 'categories#create'

  get '/categories/new', as: 'new_category'

  get '/categories/:id/edit' =>  'categories#edit', as: 'edit_category'

  patch '/categories/:id' => 'categories#update' , as: 'category'

  put '/categories/:id' => 'categories#update'

  delete '/categories/:id' => 'categories#delete'

  devise_for :teachers
  devise_for :users
  get 'home/index'

  root "home#index"

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
