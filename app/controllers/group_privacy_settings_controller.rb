class GroupPrivacySettingsController < ApplicationController
  def index
    @group_privacy_settings = GroupPrivacySetting.all

    render("group_privacy_settings/index.html.erb")
  end

  def show
    @user_group = UserGroup.new
    @group_privacy_setting = GroupPrivacySetting.find(params[:id])

    render("group_privacy_settings/show.html.erb")
  end

  def new
    @group_privacy_setting = GroupPrivacySetting.new

    render("group_privacy_settings/new.html.erb")
  end

  def create
    @group_privacy_setting = GroupPrivacySetting.new

    @group_privacy_setting.user_group_id = params[:user_group_id]
    @group_privacy_setting.share_members = params[:share_members]
    @group_privacy_setting.share_contacts = params[:share_contacts]
    @group_privacy_setting.share_events = params[:share_events]
    @group_privacy_setting.share_interactions = params[:share_interactions]

    save_status = @group_privacy_setting.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/group_privacy_settings/new", "/create_group_privacy_setting"
        redirect_to("/group_privacy_settings")
      else
        redirect_back(:fallback_location => "/", :notice => "Group privacy setting created successfully.")
      end
    else
      render("group_privacy_settings/new.html.erb")
    end
  end

  def edit
    @group_privacy_setting = GroupPrivacySetting.find(params[:id])

    render("group_privacy_settings/edit.html.erb")
  end

  def update
    @group_privacy_setting = GroupPrivacySetting.find(params[:id])

    @group_privacy_setting.user_group_id = params[:user_group_id]
    @group_privacy_setting.share_members = params[:share_members]
    @group_privacy_setting.share_contacts = params[:share_contacts]
    @group_privacy_setting.share_events = params[:share_events]
    @group_privacy_setting.share_interactions = params[:share_interactions]

    save_status = @group_privacy_setting.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/group_privacy_settings/#{@group_privacy_setting.id}/edit", "/update_group_privacy_setting"
        redirect_to("/group_privacy_settings/#{@group_privacy_setting.id}", :notice => "Group privacy setting updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Group privacy setting updated successfully.")
      end
    else
      render("group_privacy_settings/edit.html.erb")
    end
  end

  def destroy
    @group_privacy_setting = GroupPrivacySetting.find(params[:id])

    @group_privacy_setting.destroy

    if URI(request.referer).path == "/group_privacy_settings/#{@group_privacy_setting.id}"
      redirect_to("/", :notice => "Group privacy setting deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Group privacy setting deleted.")
    end
  end
end
