Dice::Application.routes.draw do

  root :to => 'dice#index'

  get '/dice' => 'dice#index', :as => :dice
  get '/dice/roll' => 'dice#roll', :as => :roll
  
end
