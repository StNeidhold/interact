class GroupAccessSettingsController < ApplicationController
  def index
    @group_access_settings = GroupAccessSetting.all

    render("group_access_settings/index.html.erb")
  end

  def show
    @group_access_setting = GroupAccessSetting.find(params[:id])

    render("group_access_settings/show.html.erb")
  end

  def new
    @group_access_setting = GroupAccessSetting.new

    render("group_access_settings/new.html.erb")
  end

  def create
    @group_access_setting = GroupAccessSetting.new

    @group_access_setting.acessibility = params[:acessibility]
    @group_access_setting.visibility = params[:visibility]

    save_status = @group_access_setting.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/group_access_settings/new", "/create_group_access_setting"
        redirect_to("/group_access_settings")
      else
        redirect_back(:fallback_location => "/", :notice => "Group access setting created successfully.")
      end
    else
      render("group_access_settings/new.html.erb")
    end
  end

  def edit
    @group_access_setting = GroupAccessSetting.find(params[:id])

    render("group_access_settings/edit.html.erb")
  end

  def update
    @group_access_setting = GroupAccessSetting.find(params[:id])

    @group_access_setting.acessibility = params[:acessibility]
    @group_access_setting.visibility = params[:visibility]

    save_status = @group_access_setting.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/group_access_settings/#{@group_access_setting.id}/edit", "/update_group_access_setting"
        redirect_to("/group_access_settings/#{@group_access_setting.id}", :notice => "Group access setting updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Group access setting updated successfully.")
      end
    else
      render("group_access_settings/edit.html.erb")
    end
  end

  def destroy
    @group_access_setting = GroupAccessSetting.find(params[:id])

    @group_access_setting.destroy

    if URI(request.referer).path == "/group_access_settings/#{@group_access_setting.id}"
      redirect_to("/", :notice => "Group access setting deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Group access setting deleted.")
    end
  end
end
