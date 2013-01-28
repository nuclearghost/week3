Rps::Application.routes.draw do

  get '/rps', :controller => 'rps', :action => 'index', :as => :rps

  root :to => 'rps#index'
  
end
