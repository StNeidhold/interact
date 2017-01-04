class UserGroupMembersController < ApplicationController
  def index
    @q = UserGroupMember.ransack(params[:q])
    @user_group_members = @q.result(:distinct => true).includes(:user, :user_group).page(params[:page]).per(10)

    render("user_group_members/index.html.erb")
  end

  def show
    @user_group_member = UserGroupMember.find(params[:id])

    render("user_group_members/show.html.erb")
  end

  def new
    @user_group_member = UserGroupMember.new

    render("user_group_members/new.html.erb")
  end

  def create
    @user_group_member = UserGroupMember.new

    @user_group_member.user_id = params[:user_id]
    @user_group_member.user_group_id = params[:user_group_id]
    @user_group_member.is_admin = params[:is_admin]

    save_status = @user_group_member.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/user_group_members/new", "/create_user_group_member"
        redirect_to("/user_group_members")
      else
        redirect_back(:fallback_location => "/", :notice => "User group member created successfully.")
      end
    else
      render("user_group_members/new.html.erb")
    end
  end

  def edit
    @user_group_member = UserGroupMember.find(params[:id])

    render("user_group_members/edit.html.erb")
  end

  def update
    @user_group_member = UserGroupMember.find(params[:id])

    @user_group_member.user_id = params[:user_id]
    @user_group_member.user_group_id = params[:user_group_id]
    @user_group_member.is_admin = params[:is_admin]

    save_status = @user_group_member.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/user_group_members/#{@user_group_member.id}/edit", "/update_user_group_member"
        redirect_to("/user_group_members/#{@user_group_member.id}", :notice => "User group member updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "User group member updated successfully.")
      end
    else
      render("user_group_members/edit.html.erb")
    end
  end

  def destroy
    @user_group_member = UserGroupMember.find(params[:id])

    @user_group_member.destroy

    if URI(request.referer).path == "/user_group_members/#{@user_group_member.id}"
      redirect_to("/", :notice => "User group member deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "User group member deleted.")
    end
  end
end
