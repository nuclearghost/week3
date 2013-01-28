Poker::Application.routes.draw do

  get "/poker", :controller => 'poker', :action => "index", :as => :poker

  root :to => 'poker#index'

end
