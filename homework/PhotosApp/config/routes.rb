PhotosApp::Application.routes.draw do

  get "/photos", :controller => 'photos', :action => 'index', :as => :photos

  get "/photos/new", :controller => 'photos', :action => 'new', :as => :new_photo

  post "/photos", :controller => 'photos', :action => 'create'
 
  get "/photos/:id", :controller => 'photos', :action => 'show', :as => :photo

  get "/photos/:id/edit", :controller => 'photos', :action => 'edit', :as => :edit_photo

  put "/photos/:id", :controller => 'photos', :action => 'update'

  delete "/photos/:id", :controller => 'photos', :action => 'destroy'

  root :to => "photos#index"
  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

end
