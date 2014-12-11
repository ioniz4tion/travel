Rails.application.routes.draw do
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'application#index'
  get '/home' => 'application#index'

  get '/calendar' => 'calendar#calendar'

  get '/about' => 'about#about'

  get '/planner' => 'planner#planner'
  match '/planner' => 'planner#suggest', via: :post

  get '/:city', to: 'gen_packages#index'
  get '/:city/hotels', to: 'gen_hotels#index'
  get '/:city/restaurants', to: 'gen_restaurants#index'
  get '/:city/attractions', to: 'gen_attractions#index'

  get 'holiday/:city', to: 'hol_packages#home'
  get 'holiday/:city/hotels', to: 'hol_packages#hotels'
  get 'holiday/:city/restaurants', to: 'hol_packages#restaurants'
  get 'holiday/:city/attractions', to: 'hol_packages#attractions'

  # namespace ':city/' do

  scope(:path => '/:city') do

    resources :gen_restaurants

    resources :gen_hotels

    resources :gen_attractions

    resources :gen_packages

  end

  # end

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
