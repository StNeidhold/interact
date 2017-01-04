class EventRsvpsController < ApplicationController
  def index
    @event_rsvps = EventRsvp.all

    render("event_rsvps/index.html.erb")
  end

  def show
    @event_rsvp = EventRsvp.find(params[:id])

    render("event_rsvps/show.html.erb")
  end

  def new
    @event_rsvp = EventRsvp.new

    render("event_rsvps/new.html.erb")
  end

  def create
    @event_rsvp = EventRsvp.new

    @event_rsvp.recruiting_event_id = params[:recruiting_event_id]
    @event_rsvp.user_id = params[:user_id]

    save_status = @event_rsvp.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/event_rsvps/new", "/create_event_rsvp"
        redirect_to("/event_rsvps")
      else
        redirect_back(:fallback_location => "/", :notice => "Event rsvp created successfully.")
      end
    else
      render("event_rsvps/new.html.erb")
    end
  end

  def edit
    @event_rsvp = EventRsvp.find(params[:id])

    render("event_rsvps/edit.html.erb")
  end

  def update
    @event_rsvp = EventRsvp.find(params[:id])

    @event_rsvp.recruiting_event_id = params[:recruiting_event_id]
    @event_rsvp.user_id = params[:user_id]

    save_status = @event_rsvp.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/event_rsvps/#{@event_rsvp.id}/edit", "/update_event_rsvp"
        redirect_to("/event_rsvps/#{@event_rsvp.id}", :notice => "Event rsvp updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Event rsvp updated successfully.")
      end
    else
      render("event_rsvps/edit.html.erb")
    end
  end

  def destroy
    @event_rsvp = EventRsvp.find(params[:id])

    @event_rsvp.destroy

    if URI(request.referer).path == "/event_rsvps/#{@event_rsvp.id}"
      redirect_to("/", :notice => "Event rsvp deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Event rsvp deleted.")
    end
  end
end
