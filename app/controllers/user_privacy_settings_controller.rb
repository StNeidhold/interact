class UserPrivacySettingsController < ApplicationController
  def index
    @user_privacy_settings = UserPrivacySetting.all

    render("user_privacy_settings/index.html.erb")
  end

  def show
    @user = User.new
    @user_privacy_setting = UserPrivacySetting.find(params[:id])

    render("user_privacy_settings/show.html.erb")
  end

  def new
    @user_privacy_setting = UserPrivacySetting.new

    render("user_privacy_settings/new.html.erb")
  end

  def create
    @user_privacy_setting = UserPrivacySetting.new

    @user_privacy_setting.user_id = params[:user_id]
    @user_privacy_setting.share_contacts = params[:share_contacts]
    @user_privacy_setting.share_interactions = params[:share_interactions]
    @user_privacy_setting.share_events = params[:share_events]

    save_status = @user_privacy_setting.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/user_privacy_settings/new", "/create_user_privacy_setting"
        redirect_to("/user_privacy_settings")
      else
        redirect_back(:fallback_location => "/", :notice => "User privacy setting created successfully.")
      end
    else
      render("user_privacy_settings/new.html.erb")
    end
  end

  def edit
    @user_privacy_setting = UserPrivacySetting.find(params[:id])

    render("user_privacy_settings/edit.html.erb")
  end

  def update
    @user_privacy_setting = UserPrivacySetting.find(params[:id])

    @user_privacy_setting.user_id = params[:user_id]
    @user_privacy_setting.share_contacts = params[:share_contacts]
    @user_privacy_setting.share_interactions = params[:share_interactions]
    @user_privacy_setting.share_events = params[:share_events]

    save_status = @user_privacy_setting.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/user_privacy_settings/#{@user_privacy_setting.id}/edit", "/update_user_privacy_setting"
        redirect_to("/user_privacy_settings/#{@user_privacy_setting.id}", :notice => "User privacy setting updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "User privacy setting updated successfully.")
      end
    else
      render("user_privacy_settings/edit.html.erb")
    end
  end

  def destroy
    @user_privacy_setting = UserPrivacySetting.find(params[:id])

    @user_privacy_setting.destroy

    if URI(request.referer).path == "/user_privacy_settings/#{@user_privacy_setting.id}"
      redirect_to("/", :notice => "User privacy setting deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "User privacy setting deleted.")
    end
  end
end
