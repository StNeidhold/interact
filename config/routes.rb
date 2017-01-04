Rails.application.routes.draw do
  # Routes for the Country resource:
  # CREATE
  get "/countries/new", :controller => "countries", :action => "new"
  post "/create_country", :controller => "countries", :action => "create"

  # READ
  get "/countries", :controller => "countries", :action => "index"
  get "/countries/:id", :controller => "countries", :action => "show"

  # UPDATE
  get "/countries/:id/edit", :controller => "countries", :action => "edit"
  post "/update_country/:id", :controller => "countries", :action => "update"

  # DELETE
  get "/delete_country/:id", :controller => "countries", :action => "destroy"
  #------------------------------

  # Routes for the Us_state resource:
  # CREATE
  get "/us_states/new", :controller => "us_states", :action => "new"
  post "/create_us_state", :controller => "us_states", :action => "create"

  # READ
  get "/us_states", :controller => "us_states", :action => "index"
  get "/us_states/:id", :controller => "us_states", :action => "show"

  # UPDATE
  get "/us_states/:id/edit", :controller => "us_states", :action => "edit"
  post "/update_us_state/:id", :controller => "us_states", :action => "update"

  # DELETE
  get "/delete_us_state/:id", :controller => "us_states", :action => "destroy"
  #------------------------------

  # Routes for the User_question_bank resource:
  # CREATE
  get "/user_question_banks/new", :controller => "user_question_banks", :action => "new"
  post "/create_user_question_bank", :controller => "user_question_banks", :action => "create"

  # READ
  get "/user_question_banks", :controller => "user_question_banks", :action => "index"
  get "/user_question_banks/:id", :controller => "user_question_banks", :action => "show"

  # UPDATE
  get "/user_question_banks/:id/edit", :controller => "user_question_banks", :action => "edit"
  post "/update_user_question_bank/:id", :controller => "user_question_banks", :action => "update"

  # DELETE
  get "/delete_user_question_bank/:id", :controller => "user_question_banks", :action => "destroy"
  #------------------------------

  # Routes for the Interaction_question resource:
  # CREATE
  get "/interaction_questions/new", :controller => "interaction_questions", :action => "new"
  post "/create_interaction_question", :controller => "interaction_questions", :action => "create"

  # READ
  get "/interaction_questions", :controller => "interaction_questions", :action => "index"
  get "/interaction_questions/:id", :controller => "interaction_questions", :action => "show"

  # UPDATE
  get "/interaction_questions/:id/edit", :controller => "interaction_questions", :action => "edit"
  post "/update_interaction_question/:id", :controller => "interaction_questions", :action => "update"

  # DELETE
  get "/delete_interaction_question/:id", :controller => "interaction_questions", :action => "destroy"
  #------------------------------

  # Routes for the Question resource:
  # CREATE
  get "/questions/new", :controller => "questions", :action => "new"
  post "/create_question", :controller => "questions", :action => "create"

  # READ
  get "/questions", :controller => "questions", :action => "index"
  get "/questions/:id", :controller => "questions", :action => "show"

  # UPDATE
  get "/questions/:id/edit", :controller => "questions", :action => "edit"
  post "/update_question/:id", :controller => "questions", :action => "update"

  # DELETE
  get "/delete_question/:id", :controller => "questions", :action => "destroy"
  #------------------------------

  # Routes for the User_privacy_setting resource:
  # CREATE
  get "/user_privacy_settings/new", :controller => "user_privacy_settings", :action => "new"
  post "/create_user_privacy_setting", :controller => "user_privacy_settings", :action => "create"

  # READ
  get "/user_privacy_settings", :controller => "user_privacy_settings", :action => "index"
  get "/user_privacy_settings/:id", :controller => "user_privacy_settings", :action => "show"

  # UPDATE
  get "/user_privacy_settings/:id/edit", :controller => "user_privacy_settings", :action => "edit"
  post "/update_user_privacy_setting/:id", :controller => "user_privacy_settings", :action => "update"

  # DELETE
  get "/delete_user_privacy_setting/:id", :controller => "user_privacy_settings", :action => "destroy"
  #------------------------------

  # Routes for the Group_privacy_setting resource:
  # CREATE
  get "/group_privacy_settings/new", :controller => "group_privacy_settings", :action => "new"
  post "/create_group_privacy_setting", :controller => "group_privacy_settings", :action => "create"

  # READ
  get "/group_privacy_settings", :controller => "group_privacy_settings", :action => "index"
  get "/group_privacy_settings/:id", :controller => "group_privacy_settings", :action => "show"

  # UPDATE
  get "/group_privacy_settings/:id/edit", :controller => "group_privacy_settings", :action => "edit"
  post "/update_group_privacy_setting/:id", :controller => "group_privacy_settings", :action => "update"

  # DELETE
  get "/delete_group_privacy_setting/:id", :controller => "group_privacy_settings", :action => "destroy"
  #------------------------------

  # Routes for the Group_join_request resource:
  # CREATE
  get "/group_join_requests/new", :controller => "group_join_requests", :action => "new"
  post "/create_group_join_request", :controller => "group_join_requests", :action => "create"

  # READ
  get "/group_join_requests", :controller => "group_join_requests", :action => "index"
  get "/group_join_requests/:id", :controller => "group_join_requests", :action => "show"

  # UPDATE
  get "/group_join_requests/:id/edit", :controller => "group_join_requests", :action => "edit"
  post "/update_group_join_request/:id", :controller => "group_join_requests", :action => "update"

  # DELETE
  get "/delete_group_join_request/:id", :controller => "group_join_requests", :action => "destroy"
  #------------------------------

  # Routes for the Group_access_setting resource:
  # CREATE
  get "/group_access_settings/new", :controller => "group_access_settings", :action => "new"
  post "/create_group_access_setting", :controller => "group_access_settings", :action => "create"

  # READ
  get "/group_access_settings", :controller => "group_access_settings", :action => "index"
  get "/group_access_settings/:id", :controller => "group_access_settings", :action => "show"

  # UPDATE
  get "/group_access_settings/:id/edit", :controller => "group_access_settings", :action => "edit"
  post "/update_group_access_setting/:id", :controller => "group_access_settings", :action => "update"

  # DELETE
  get "/delete_group_access_setting/:id", :controller => "group_access_settings", :action => "destroy"
  #------------------------------

  # Routes for the Status resource:
  # CREATE
  get "/statuses/new", :controller => "statuses", :action => "new"
  post "/create_status", :controller => "statuses", :action => "create"

  # READ
  get "/statuses", :controller => "statuses", :action => "index"
  get "/statuses/:id", :controller => "statuses", :action => "show"

  # UPDATE
  get "/statuses/:id/edit", :controller => "statuses", :action => "edit"
  post "/update_status/:id", :controller => "statuses", :action => "update"

  # DELETE
  get "/delete_status/:id", :controller => "statuses", :action => "destroy"
  #------------------------------

  # Routes for the Event_rsvp resource:
  # CREATE
  get "/event_rsvps/new", :controller => "event_rsvps", :action => "new"
  post "/create_event_rsvp", :controller => "event_rsvps", :action => "create"

  # READ
  get "/event_rsvps", :controller => "event_rsvps", :action => "index"
  get "/event_rsvps/:id", :controller => "event_rsvps", :action => "show"

  # UPDATE
  get "/event_rsvps/:id/edit", :controller => "event_rsvps", :action => "edit"
  post "/update_event_rsvp/:id", :controller => "event_rsvps", :action => "update"

  # DELETE
  get "/delete_event_rsvp/:id", :controller => "event_rsvps", :action => "destroy"
  #------------------------------

  # Routes for the User_recruiting_cycle resource:
  # CREATE
  get "/user_recruiting_cycles/new", :controller => "user_recruiting_cycles", :action => "new"
  post "/create_user_recruiting_cycle", :controller => "user_recruiting_cycles", :action => "create"

  # READ
  get "/user_recruiting_cycles", :controller => "user_recruiting_cycles", :action => "index"
  get "/user_recruiting_cycles/:id", :controller => "user_recruiting_cycles", :action => "show"

  # UPDATE
  get "/user_recruiting_cycles/:id/edit", :controller => "user_recruiting_cycles", :action => "edit"
  post "/update_user_recruiting_cycle/:id", :controller => "user_recruiting_cycles", :action => "update"

  # DELETE
  get "/delete_user_recruiting_cycle/:id", :controller => "user_recruiting_cycles", :action => "destroy"
  #------------------------------

  # Routes for the Gender resource:
  # CREATE
  get "/genders/new", :controller => "genders", :action => "new"
  post "/create_gender", :controller => "genders", :action => "create"

  # READ
  get "/genders", :controller => "genders", :action => "index"
  get "/genders/:id", :controller => "genders", :action => "show"

  # UPDATE
  get "/genders/:id/edit", :controller => "genders", :action => "edit"
  post "/update_gender/:id", :controller => "genders", :action => "update"

  # DELETE
  get "/delete_gender/:id", :controller => "genders", :action => "destroy"
  #------------------------------

  # Routes for the Setting resource:
  # CREATE
  get "/settings/new", :controller => "settings", :action => "new"
  post "/create_setting", :controller => "settings", :action => "create"

  # READ
  get "/settings", :controller => "settings", :action => "index"
  get "/settings/:id", :controller => "settings", :action => "show"

  # UPDATE
  get "/settings/:id/edit", :controller => "settings", :action => "edit"
  post "/update_setting/:id", :controller => "settings", :action => "update"

  # DELETE
  get "/delete_setting/:id", :controller => "settings", :action => "destroy"
  #------------------------------

  # Routes for the Process_type resource:
  # CREATE
  get "/process_types/new", :controller => "process_types", :action => "new"
  post "/create_process_type", :controller => "process_types", :action => "create"

  # READ
  get "/process_types", :controller => "process_types", :action => "index"
  get "/process_types/:id", :controller => "process_types", :action => "show"

  # UPDATE
  get "/process_types/:id/edit", :controller => "process_types", :action => "edit"
  post "/update_process_type/:id", :controller => "process_types", :action => "update"

  # DELETE
  get "/delete_process_type/:id", :controller => "process_types", :action => "destroy"
  #------------------------------

  # Routes for the College resource:
  # CREATE
  get "/colleges/new", :controller => "colleges", :action => "new"
  post "/create_college", :controller => "colleges", :action => "create"

  # READ
  get "/colleges", :controller => "colleges", :action => "index"
  get "/colleges/:id", :controller => "colleges", :action => "show"

  # UPDATE
  get "/colleges/:id/edit", :controller => "colleges", :action => "edit"
  post "/update_college/:id", :controller => "colleges", :action => "update"

  # DELETE
  get "/delete_college/:id", :controller => "colleges", :action => "destroy"
  #------------------------------

  # Routes for the Business_school resource:
  # CREATE
  get "/business_schools/new", :controller => "business_schools", :action => "new"
  post "/create_business_school", :controller => "business_schools", :action => "create"

  # READ
  get "/business_schools", :controller => "business_schools", :action => "index"
  get "/business_schools/:id", :controller => "business_schools", :action => "show"

  # UPDATE
  get "/business_schools/:id/edit", :controller => "business_schools", :action => "edit"
  post "/update_business_school/:id", :controller => "business_schools", :action => "update"

  # DELETE
  get "/delete_business_school/:id", :controller => "business_schools", :action => "destroy"
  #------------------------------

  # Routes for the Banking_title resource:
  # CREATE
  get "/banking_titles/new", :controller => "banking_titles", :action => "new"
  post "/create_banking_title", :controller => "banking_titles", :action => "create"

  # READ
  get "/banking_titles", :controller => "banking_titles", :action => "index"
  get "/banking_titles/:id", :controller => "banking_titles", :action => "show"

  # UPDATE
  get "/banking_titles/:id/edit", :controller => "banking_titles", :action => "edit"
  post "/update_banking_title/:id", :controller => "banking_titles", :action => "update"

  # DELETE
  get "/delete_banking_title/:id", :controller => "banking_titles", :action => "destroy"
  #------------------------------

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
