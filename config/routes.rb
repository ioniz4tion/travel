Rails.application.routes.draw do
  resources :bpas

  resources :copyrights

  resources :abouts

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'application#index'
  get '/home' => 'application#index'

  get '/sitemap.xml' => 'application#sitemap'

  get '/calendar' => 'calendar#calendar'

  get '/converter' => 'application#converter'
  get '/convert' => 'application#convert'

  get '/time' => 'application#time'
  get '/time_convert' => 'application#time_convert'

  resources :about, controller: 'abouts'

  resources :copyrights

  resources :bpas

  resources :gen_packages

  get '/planner' => 'planner#planner'
  match '/planner/suggest' => 'planner#suggest', via: :post

  get '/planner/suggest/another' => 'planner#another'

  match '/planner/hotel' => 'planner#hotel', via: :post

  put '/planner/q/:id' => 'planner#update_question'
  put '/planner/a/:id' => 'planner#update_answer'
  put '/planner/av/:id' => 'planner#update_answer_value'
  post '/planner/add' => 'planner#create'
  delete '/planner/delete/:id' => 'planner#destroy'


  get '/:city', to: 'gen_packages#index'
  put '/:city/p/update/:id' => 'gen_packages#update_paragraph'
  patch '/:city/p/update/:id' => 'gen_packages#update_paragraph'

  put '/:city/update/:id' => 'gen_packages#update'
  patch '/:city/update/:id' => 'gen_packages#update'

  post '/:city/p/new' => 'gen_packages#create_paragraph'
  delete '/:city/p/destroy/:id' => 'gen_packages#destroy_paragraph'


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
