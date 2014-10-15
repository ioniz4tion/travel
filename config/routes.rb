Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  get '/home' => 'home#index'

  get '/calendar' => 'calendar#calendar'

  get '/about' => 'about#about'

  get '/planner' => 'planner#planner'

  #Starting general packages here
  
  scope 'seattle', module: 'packages_gen' do
    get '' => 'seattle#home'
    get '/hotels' => 'seattle#hotels'
    get '/restaurants' => 'seattle#restaurants'
    get '/attractions' => 'seattle#attractions'
  end

  scope 'london', module: 'packages_gen' do
    get '' => 'london#home'
    get '/hotels' => 'london#hotels'
    get '/restaurants' => 'london#restaurants'
    get '/attractions' => 'london#attractions'
  end

  scope 'washington', module: 'packages_gen' do
    get '' => 'washington#home'
    get '/hotels' => 'washington#hotels'
    get '/restaurants' => 'washington#restaurants'
    get '/attractions' => 'washington#attractions'
  end
  
  scope 'hawaii', module: 'packages_gen' do
    get '' => 'hawaii#home'
    get '/hotels' => 'hawaii#hotels'
    get '/restaurants' => 'hawaii#restaurants'
    get '/attractions' => 'hawaii#attractions'
  end
  
  scope 'sydney', module: 'packages_gen' do
    get '' => 'sydney#home'
    get '/hotels' => 'sydney#hotels'
    get '/restaurants' => 'sydney#restaurants'
    get '/attractions' => 'sydney#attractions'
  end
  
  scope 'new_york', module: 'packages_gen' do
    get '' => 'new_york#home'
    get '/hotels' => 'new_york#hotels'
    get '/restaurants' => 'new_york#restaurants'
    get '/attractions' => 'new_york#attractions'
  end

  # Starting holiday package routes here

  scope 'spring_break', module: 'packages_hol' do
    get '' => 'spring_break#home'
    get '/hotels' => 'spring_break#hotels'
    get '/restaurants' => 'spring_break#restaurants'
    get '/attractions' => 'spring_break#attractions'
  end

  scope 'christmas', module: 'packages_hol' do
    get '' => 'christmas#home'
    get '/hotels' => 'christmas#hotels'
    get '/restaurants' => 'christmas#restaurants'
    get '/attractions' => 'christmas#attractions'
  end

  scope 'thanksgiving', module: 'packages_hol' do
    get '' => 'thanksgiving#home'
    get '/hotels' => 'thanksgiving#hotels'
    get '/restaurants' => 'thanksgiving#restaurants'
    get '/attractions' => 'thanksgiving#attractions'
  end

  scope 'valentines', module: 'packages_hol' do
    get '' => 'valentines#home'
    get '/hotels' => 'valentines#hotels'
    get '/restaurants' => 'valentines#restaurants'
    get '/attractions' => 'valentines#attractions'
  end  

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
