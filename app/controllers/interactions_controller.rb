class InteractionsController < ApplicationController
  def index
    @interactions = Interaction.all

    render("interactions/index.html.erb")
  end

  def show
    @interaction = Interaction.find(params[:id])

    render("interactions/show.html.erb")
  end

  def new
    @interaction = Interaction.new

    render("interactions/new.html.erb")
  end

  def create
    @interaction = Interaction.new

    @interaction.user_id = params[:user_id]
    @interaction.contact_id = params[:contact_id]
    @interaction.setting_id = params[:setting_id]
    @interaction.date = params[:date]
    @interaction.recruiting_event_id = params[:recruiting_event_id]
    @interaction.time = params[:time]
    @interaction.location = params[:location]
    @interaction.notes = params[:notes]

    save_status = @interaction.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/interactions/new", "/create_interaction"
        redirect_to("/interactions")
      else
        redirect_back(:fallback_location => "/", :notice => "Interaction created successfully.")
      end
    else
      render("interactions/new.html.erb")
    end
  end

  def edit
    @interaction = Interaction.find(params[:id])

    render("interactions/edit.html.erb")
  end

  def update
    @interaction = Interaction.find(params[:id])

    @interaction.user_id = params[:user_id]
    @interaction.contact_id = params[:contact_id]
    @interaction.setting_id = params[:setting_id]
    @interaction.date = params[:date]
    @interaction.recruiting_event_id = params[:recruiting_event_id]
    @interaction.time = params[:time]
    @interaction.location = params[:location]
    @interaction.notes = params[:notes]

    save_status = @interaction.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/interactions/#{@interaction.id}/edit", "/update_interaction"
        redirect_to("/interactions/#{@interaction.id}", :notice => "Interaction updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Interaction updated successfully.")
      end
    else
      render("interactions/edit.html.erb")
    end
  end

  def destroy
    @interaction = Interaction.find(params[:id])

    @interaction.destroy

    if URI(request.referer).path == "/interactions/#{@interaction.id}"
      redirect_to("/", :notice => "Interaction deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Interaction deleted.")
    end
  end
end
