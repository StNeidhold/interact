class UserRecruitingCyclesController < ApplicationController
  def index
    @user_recruiting_cycles = UserRecruitingCycle.all

    render("user_recruiting_cycles/index.html.erb")
  end

  def show
    @user_recruiting_cycle = UserRecruitingCycle.find(params[:id])

    render("user_recruiting_cycles/show.html.erb")
  end

  def new
    @user_recruiting_cycle = UserRecruitingCycle.new

    render("user_recruiting_cycles/new.html.erb")
  end

  def create
    @user_recruiting_cycle = UserRecruitingCycle.new

    @user_recruiting_cycle.user_id = params[:user_id]
    @user_recruiting_cycle.start_date = params[:start_date]
    @user_recruiting_cycle.end_date = params[:end_date]
    @user_recruiting_cycle.name = params[:name]
    @user_recruiting_cycle.is_active = params[:is_active]

    save_status = @user_recruiting_cycle.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/user_recruiting_cycles/new", "/create_user_recruiting_cycle"
        redirect_to("/user_recruiting_cycles")
      else
        redirect_back(:fallback_location => "/", :notice => "User recruiting cycle created successfully.")
      end
    else
      render("user_recruiting_cycles/new.html.erb")
    end
  end

  def edit
    @user_recruiting_cycle = UserRecruitingCycle.find(params[:id])

    render("user_recruiting_cycles/edit.html.erb")
  end

  def update
    @user_recruiting_cycle = UserRecruitingCycle.find(params[:id])

    @user_recruiting_cycle.user_id = params[:user_id]
    @user_recruiting_cycle.start_date = params[:start_date]
    @user_recruiting_cycle.end_date = params[:end_date]
    @user_recruiting_cycle.name = params[:name]
    @user_recruiting_cycle.is_active = params[:is_active]

    save_status = @user_recruiting_cycle.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/user_recruiting_cycles/#{@user_recruiting_cycle.id}/edit", "/update_user_recruiting_cycle"
        redirect_to("/user_recruiting_cycles/#{@user_recruiting_cycle.id}", :notice => "User recruiting cycle updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "User recruiting cycle updated successfully.")
      end
    else
      render("user_recruiting_cycles/edit.html.erb")
    end
  end

  def destroy
    @user_recruiting_cycle = UserRecruitingCycle.find(params[:id])

    @user_recruiting_cycle.destroy

    if URI(request.referer).path == "/user_recruiting_cycles/#{@user_recruiting_cycle.id}"
      redirect_to("/", :notice => "User recruiting cycle deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "User recruiting cycle deleted.")
    end
  end
end
