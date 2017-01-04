class GroupJoinRequestsController < ApplicationController
  before_action :current_user_must_be_group_join_request_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_group_join_request_user
    group_join_request = GroupJoinRequest.find(params[:id])

    unless current_user == group_join_request.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @group_join_requests = GroupJoinRequest.all

    render("group_join_requests/index.html.erb")
  end

  def show
    @group_join_request = GroupJoinRequest.find(params[:id])

    render("group_join_requests/show.html.erb")
  end

  def new
    @group_join_request = GroupJoinRequest.new

    render("group_join_requests/new.html.erb")
  end

  def create
    @group_join_request = GroupJoinRequest.new

    @group_join_request.user_group_id = params[:user_group_id]
    @group_join_request.user_id = params[:user_id]

    save_status = @group_join_request.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/group_join_requests/new", "/create_group_join_request"
        redirect_to("/group_join_requests")
      else
        redirect_back(:fallback_location => "/", :notice => "Group join request created successfully.")
      end
    else
      render("group_join_requests/new.html.erb")
    end
  end

  def edit
    @group_join_request = GroupJoinRequest.find(params[:id])

    render("group_join_requests/edit.html.erb")
  end

  def update
    @group_join_request = GroupJoinRequest.find(params[:id])

    @group_join_request.user_group_id = params[:user_group_id]
    @group_join_request.user_id = params[:user_id]

    save_status = @group_join_request.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/group_join_requests/#{@group_join_request.id}/edit", "/update_group_join_request"
        redirect_to("/group_join_requests/#{@group_join_request.id}", :notice => "Group join request updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Group join request updated successfully.")
      end
    else
      render("group_join_requests/edit.html.erb")
    end
  end

  def destroy
    @group_join_request = GroupJoinRequest.find(params[:id])

    @group_join_request.destroy

    if URI(request.referer).path == "/group_join_requests/#{@group_join_request.id}"
      redirect_to("/", :notice => "Group join request deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Group join request deleted.")
    end
  end
end
