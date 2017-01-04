class ProcessTypesController < ApplicationController
  def index
    @process_types = ProcessType.all

    render("process_types/index.html.erb")
  end

  def show
    @firm = Firm.new
    @process_type = ProcessType.find(params[:id])

    render("process_types/show.html.erb")
  end

  def new
    @process_type = ProcessType.new

    render("process_types/new.html.erb")
  end

  def create
    @process_type = ProcessType.new

    @process_type.process_type = params[:process_type]
    @process_type.high_end = params[:high_end]
    @process_type.low_end = params[:low_end]

    save_status = @process_type.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/process_types/new", "/create_process_type"
        redirect_to("/process_types")
      else
        redirect_back(:fallback_location => "/", :notice => "Process type created successfully.")
      end
    else
      render("process_types/new.html.erb")
    end
  end

  def edit
    @process_type = ProcessType.find(params[:id])

    render("process_types/edit.html.erb")
  end

  def update
    @process_type = ProcessType.find(params[:id])

    @process_type.process_type = params[:process_type]
    @process_type.high_end = params[:high_end]
    @process_type.low_end = params[:low_end]

    save_status = @process_type.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/process_types/#{@process_type.id}/edit", "/update_process_type"
        redirect_to("/process_types/#{@process_type.id}", :notice => "Process type updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Process type updated successfully.")
      end
    else
      render("process_types/edit.html.erb")
    end
  end

  def destroy
    @process_type = ProcessType.find(params[:id])

    @process_type.destroy

    if URI(request.referer).path == "/process_types/#{@process_type.id}"
      redirect_to("/", :notice => "Process type deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Process type deleted.")
    end
  end
end
