Rails.application.routes.draw do
  # Routes for the Target_firm resource:
  # CREATE
  get "/target_firms/new", :controller => "target_firms", :action => "new"
  post "/create_target_firm", :controller => "target_firms", :action => "create"

  # READ
  get "/target_firms", :controller => "target_firms", :action => "index"
  get "/target_firms/:id", :controller => "target_firms", :action => "show"

  # UPDATE
  get "/target_firms/:id/edit", :controller => "target_firms", :action => "edit"
  post "/update_target_firm/:id", :controller => "target_firms", :action => "update"

  # DELETE
  get "/delete_target_firm/:id", :controller => "target_firms", :action => "destroy"
  #------------------------------

  # Routes for the Recruiting_event resource:
  # CREATE
  get "/recruiting_events/new", :controller => "recruiting_events", :action => "new"
  post "/create_recruiting_event", :controller => "recruiting_events", :action => "create"

  # READ
  get "/recruiting_events", :controller => "recruiting_events", :action => "index"
  get "/recruiting_events/:id", :controller => "recruiting_events", :action => "show"

  # UPDATE
  get "/recruiting_events/:id/edit", :controller => "recruiting_events", :action => "edit"
  post "/update_recruiting_event/:id", :controller => "recruiting_events", :action => "update"

  # DELETE
  get "/delete_recruiting_event/:id", :controller => "recruiting_events", :action => "destroy"
  #------------------------------

  # Routes for the User_group_member resource:
  # CREATE
  get "/user_group_members/new", :controller => "user_group_members", :action => "new"
  post "/create_user_group_member", :controller => "user_group_members", :action => "create"

  # READ
  get "/user_group_members", :controller => "user_group_members", :action => "index"
  get "/user_group_members/:id", :controller => "user_group_members", :action => "show"

  # UPDATE
  get "/user_group_members/:id/edit", :controller => "user_group_members", :action => "edit"
  post "/update_user_group_member/:id", :controller => "user_group_members", :action => "update"

  # DELETE
  get "/delete_user_group_member/:id", :controller => "user_group_members", :action => "destroy"
  #------------------------------

  # Routes for the User_group resource:
  # CREATE
  get "/user_groups/new", :controller => "user_groups", :action => "new"
  post "/create_user_group", :controller => "user_groups", :action => "create"

  # READ
  get "/user_groups", :controller => "user_groups", :action => "index"
  get "/user_groups/:id", :controller => "user_groups", :action => "show"

  # UPDATE
  get "/user_groups/:id/edit", :controller => "user_groups", :action => "edit"
  post "/update_user_group/:id", :controller => "user_groups", :action => "update"

  # DELETE
  get "/delete_user_group/:id", :controller => "user_groups", :action => "destroy"
  #------------------------------

  # Routes for the Firm_group resource:
  # CREATE
  get "/firm_groups/new", :controller => "firm_groups", :action => "new"
  post "/create_firm_group", :controller => "firm_groups", :action => "create"

  # READ
  get "/firm_groups", :controller => "firm_groups", :action => "index"
  get "/firm_groups/:id", :controller => "firm_groups", :action => "show"

  # UPDATE
  get "/firm_groups/:id/edit", :controller => "firm_groups", :action => "edit"
  post "/update_firm_group/:id", :controller => "firm_groups", :action => "update"

  # DELETE
  get "/delete_firm_group/:id", :controller => "firm_groups", :action => "destroy"
  #------------------------------

  # Routes for the City resource:
  # CREATE
  get "/cities/new", :controller => "cities", :action => "new"
  post "/create_city", :controller => "cities", :action => "create"

  # READ
  get "/cities", :controller => "cities", :action => "index"
  get "/cities/:id", :controller => "cities", :action => "show"

  # UPDATE
  get "/cities/:id/edit", :controller => "cities", :action => "edit"
  post "/update_city/:id", :controller => "cities", :action => "update"

  # DELETE
  get "/delete_city/:id", :controller => "cities", :action => "destroy"
  #------------------------------

  # Routes for the Office resource:
  # CREATE
  get "/offices/new", :controller => "offices", :action => "new"
  post "/create_office", :controller => "offices", :action => "create"

  # READ
  get "/offices", :controller => "offices", :action => "index"
  get "/offices/:id", :controller => "offices", :action => "show"

  # UPDATE
  get "/offices/:id/edit", :controller => "offices", :action => "edit"
  post "/update_office/:id", :controller => "offices", :action => "update"

  # DELETE
  get "/delete_office/:id", :controller => "offices", :action => "destroy"
  #------------------------------

  # Routes for the Firm resource:
  # CREATE
  get "/firms/new", :controller => "firms", :action => "new"
  post "/create_firm", :controller => "firms", :action => "create"

  # READ
  get "/firms", :controller => "firms", :action => "index"
  get "/firms/:id", :controller => "firms", :action => "show"

  # UPDATE
  get "/firms/:id/edit", :controller => "firms", :action => "edit"
  post "/update_firm/:id", :controller => "firms", :action => "update"

  # DELETE
  get "/delete_firm/:id", :controller => "firms", :action => "destroy"
  #------------------------------

  # Routes for the Contact resource:
  # CREATE
  get "/contacts/new", :controller => "contacts", :action => "new"
  post "/create_contact", :controller => "contacts", :action => "create"

  # READ
  get "/contacts", :controller => "contacts", :action => "index"
  get "/contacts/:id", :controller => "contacts", :action => "show"

  # UPDATE
  get "/contacts/:id/edit", :controller => "contacts", :action => "edit"
  post "/update_contact/:id", :controller => "contacts", :action => "update"

  # DELETE
  get "/delete_contact/:id", :controller => "contacts", :action => "destroy"
  #------------------------------

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
