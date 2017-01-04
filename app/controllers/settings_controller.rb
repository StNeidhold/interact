class SettingsController < ApplicationController
  def index
    @settings = Setting.all

    render("settings/index.html.erb")
  end

  def show
    @interaction = Interaction.new
    @recruiting_event = RecruitingEvent.new
    @setting = Setting.find(params[:id])

    render("settings/show.html.erb")
  end

  def new
    @setting = Setting.new

    render("settings/new.html.erb")
  end

  def create
    @setting = Setting.new

    @setting.name = params[:name]

    save_status = @setting.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/settings/new", "/create_setting"
        redirect_to("/settings")
      else
        redirect_back(:fallback_location => "/", :notice => "Setting created successfully.")
      end
    else
      render("settings/new.html.erb")
    end
  end

  def edit
    @setting = Setting.find(params[:id])

    render("settings/edit.html.erb")
  end

  def update
    @setting = Setting.find(params[:id])

    @setting.name = params[:name]

    save_status = @setting.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/settings/#{@setting.id}/edit", "/update_setting"
        redirect_to("/settings/#{@setting.id}", :notice => "Setting updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Setting updated successfully.")
      end
    else
      render("settings/edit.html.erb")
    end
  end

  def destroy
    @setting = Setting.find(params[:id])

    @setting.destroy

    if URI(request.referer).path == "/settings/#{@setting.id}"
      redirect_to("/", :notice => "Setting deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Setting deleted.")
    end
  end
end
