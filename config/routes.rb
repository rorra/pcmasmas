ActionController::Routing::Routes.draw do |map|
  map.resources :categories, :only => [:index, :show]

  map.resources :products, :only => [:show]

  # Authentication and session management
  map.resource :account, :controller => "users"
  map.resource :user_session

  map.admin_home "/admin", :controller => 'admin/home', :action => "index"

  map.namespace :admin do |admin|
    admin.resources :categories, :collection => [:show_search]
    admin.resources :products, :collection => [:show_search]
    admin.resources :users, :collection => [:show_search]
  end

  map.root :controller => 'home'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
