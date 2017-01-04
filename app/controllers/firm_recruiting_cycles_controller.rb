class FirmRecruitingCyclesController < ApplicationController
  def index
    @firm_recruiting_cycles = FirmRecruitingCycle.page(params[:page]).per(10)

    render("firm_recruiting_cycles/index.html.erb")
  end

  def show
    @firm_recruiting_cycle = FirmRecruitingCycle.find(params[:id])

    render("firm_recruiting_cycles/show.html.erb")
  end

  def new
    @firm_recruiting_cycle = FirmRecruitingCycle.new

    render("firm_recruiting_cycles/new.html.erb")
  end

  def create
    @firm_recruiting_cycle = FirmRecruitingCycle.new

    @firm_recruiting_cycle.firm_id = params[:firm_id]
    @firm_recruiting_cycle.first_round_start = params[:first_round_start]
    @firm_recruiting_cycle.superday_start = params[:superday_start]

    save_status = @firm_recruiting_cycle.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/firm_recruiting_cycles/new", "/create_firm_recruiting_cycle"
        redirect_to("/firm_recruiting_cycles")
      else
        redirect_back(:fallback_location => "/", :notice => "Firm recruiting cycle created successfully.")
      end
    else
      render("firm_recruiting_cycles/new.html.erb")
    end
  end

  def edit
    @firm_recruiting_cycle = FirmRecruitingCycle.find(params[:id])

    render("firm_recruiting_cycles/edit.html.erb")
  end

  def update
    @firm_recruiting_cycle = FirmRecruitingCycle.find(params[:id])

    @firm_recruiting_cycle.firm_id = params[:firm_id]
    @firm_recruiting_cycle.first_round_start = params[:first_round_start]
    @firm_recruiting_cycle.superday_start = params[:superday_start]

    save_status = @firm_recruiting_cycle.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/firm_recruiting_cycles/#{@firm_recruiting_cycle.id}/edit", "/update_firm_recruiting_cycle"
        redirect_to("/firm_recruiting_cycles/#{@firm_recruiting_cycle.id}", :notice => "Firm recruiting cycle updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Firm recruiting cycle updated successfully.")
      end
    else
      render("firm_recruiting_cycles/edit.html.erb")
    end
  end

  def destroy
    @firm_recruiting_cycle = FirmRecruitingCycle.find(params[:id])

    @firm_recruiting_cycle.destroy

    if URI(request.referer).path == "/firm_recruiting_cycles/#{@firm_recruiting_cycle.id}"
      redirect_to("/", :notice => "Firm recruiting cycle deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Firm recruiting cycle deleted.")
    end
  end
end
