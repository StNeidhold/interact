Rails.application.routes.draw do
  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # Routes for the Interaction resource:
  # CREATE
  get "/interactions/new", :controller => "interactions", :action => "new"
  post "/create_interaction", :controller => "interactions", :action => "create"

  # READ
  get "/interactions", :controller => "interactions", :action => "index"
  get "/interactions/:id", :controller => "interactions", :action => "show"

  # UPDATE
  get "/interactions/:id/edit", :controller => "interactions", :action => "edit"
  post "/update_interaction/:id", :controller => "interactions", :action => "update"

  # DELETE
  get "/delete_interaction/:id", :controller => "interactions", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
