ActionController::Routing::Routes.draw do |map|

  map.resources :contacts, :member => {:call => :get, :write => :get}
  map.resources :messages, :member => {:reply => :get}
  map.resources :photos
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
  map.root :controller => 'contacts', :action => :index
  
end