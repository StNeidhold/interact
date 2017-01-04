class FirmGroupsController < ApplicationController
  def index
    @q = FirmGroup.ransack(params[:q])
    @firm_groups = @q.result(:distinct => true).includes(:firm, :contacts).page(params[:page]).per(10)

    render("firm_groups/index.html.erb")
  end

  def show
    @contact = Contact.new
    @firm_group = FirmGroup.find(params[:id])

    render("firm_groups/show.html.erb")
  end

  def new
    @firm_group = FirmGroup.new

    render("firm_groups/new.html.erb")
  end

  def create
    @firm_group = FirmGroup.new

    @firm_group.firm_id = params[:firm_id]
    @firm_group.group_name = params[:group_name]

    save_status = @firm_group.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/firm_groups/new", "/create_firm_group"
        redirect_to("/firm_groups")
      else
        redirect_back(:fallback_location => "/", :notice => "Firm group created successfully.")
      end
    else
      render("firm_groups/new.html.erb")
    end
  end

  def edit
    @firm_group = FirmGroup.find(params[:id])

    render("firm_groups/edit.html.erb")
  end

  def update
    @firm_group = FirmGroup.find(params[:id])

    @firm_group.firm_id = params[:firm_id]
    @firm_group.group_name = params[:group_name]

    save_status = @firm_group.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/firm_groups/#{@firm_group.id}/edit", "/update_firm_group"
        redirect_to("/firm_groups/#{@firm_group.id}", :notice => "Firm group updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Firm group updated successfully.")
      end
    else
      render("firm_groups/edit.html.erb")
    end
  end

  def destroy
    @firm_group = FirmGroup.find(params[:id])

    @firm_group.destroy

    if URI(request.referer).path == "/firm_groups/#{@firm_group.id}"
      redirect_to("/", :notice => "Firm group deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Firm group deleted.")
    end
  end
end
