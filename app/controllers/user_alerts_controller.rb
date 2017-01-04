class UserAlertsController < ApplicationController
  def index
    @user_alerts = UserAlert.all

    render("user_alerts/index.html.erb")
  end

  def show
    @user_alert = UserAlert.find(params[:id])

    render("user_alerts/show.html.erb")
  end

  def new
    @user_alert = UserAlert.new

    render("user_alerts/new.html.erb")
  end

  def create
    @user_alert = UserAlert.new

    @user_alert.user_id = params[:user_id]
    @user_alert.alert_text = params[:alert_text]

    save_status = @user_alert.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/user_alerts/new", "/create_user_alert"
        redirect_to("/user_alerts")
      else
        redirect_back(:fallback_location => "/", :notice => "User alert created successfully.")
      end
    else
      render("user_alerts/new.html.erb")
    end
  end

  def edit
    @user_alert = UserAlert.find(params[:id])

    render("user_alerts/edit.html.erb")
  end

  def update
    @user_alert = UserAlert.find(params[:id])

    @user_alert.user_id = params[:user_id]
    @user_alert.alert_text = params[:alert_text]

    save_status = @user_alert.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/user_alerts/#{@user_alert.id}/edit", "/update_user_alert"
        redirect_to("/user_alerts/#{@user_alert.id}", :notice => "User alert updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "User alert updated successfully.")
      end
    else
      render("user_alerts/edit.html.erb")
    end
  end

  def destroy
    @user_alert = UserAlert.find(params[:id])

    @user_alert.destroy

    if URI(request.referer).path == "/user_alerts/#{@user_alert.id}"
      redirect_to("/", :notice => "User alert deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "User alert deleted.")
    end
  end
end
