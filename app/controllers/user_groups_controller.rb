class UserGroupsController < ApplicationController
  def index
    @user_groups = UserGroup.all

    render("user_groups/index.html.erb")
  end

  def show
    @user_group_member = UserGroupMember.new
    @group_join_request = GroupJoinRequest.new
    @user_group = UserGroup.find(params[:id])

    render("user_groups/show.html.erb")
  end

  def new
    @user_group = UserGroup.new

    render("user_groups/new.html.erb")
  end

  def create
    @user_group = UserGroup.new

    @user_group.group_access_setting_id = params[:group_access_setting_id]
    @user_group.name = params[:name]
    @user_group.description = params[:description]
    @user_group.group_privacy_setting_id = params[:group_privacy_setting_id]

    save_status = @user_group.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/user_groups/new", "/create_user_group"
        redirect_to("/user_groups")
      else
        redirect_back(:fallback_location => "/", :notice => "User group created successfully.")
      end
    else
      render("user_groups/new.html.erb")
    end
  end

  def edit
    @user_group = UserGroup.find(params[:id])

    render("user_groups/edit.html.erb")
  end

  def update
    @user_group = UserGroup.find(params[:id])

    @user_group.group_access_setting_id = params[:group_access_setting_id]
    @user_group.name = params[:name]
    @user_group.description = params[:description]
    @user_group.group_privacy_setting_id = params[:group_privacy_setting_id]

    save_status = @user_group.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/user_groups/#{@user_group.id}/edit", "/update_user_group"
        redirect_to("/user_groups/#{@user_group.id}", :notice => "User group updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "User group updated successfully.")
      end
    else
      render("user_groups/edit.html.erb")
    end
  end

  def destroy
    @user_group = UserGroup.find(params[:id])

    @user_group.destroy

    if URI(request.referer).path == "/user_groups/#{@user_group.id}"
      redirect_to("/", :notice => "User group deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "User group deleted.")
    end
  end
end
