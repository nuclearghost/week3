Rps::Application.routes.draw do

  get '/rps', :controller => 'rps', :action => 'index', :as => :rps

  get '/rps/:id', :controller => 'rps', :action => 'play'
  root :to => 'rps#index'
  
end
