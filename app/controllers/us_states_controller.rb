class UsStatesController < ApplicationController
  def index
    @us_states = UsState.all

    render("us_states/index.html.erb")
  end

  def show
    @city = City.new
    @us_state = UsState.find(params[:id])

    render("us_states/show.html.erb")
  end

  def new
    @us_state = UsState.new

    render("us_states/new.html.erb")
  end

  def create
    @us_state = UsState.new

    @us_state.state_name = params[:state_name]

    save_status = @us_state.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/us_states/new", "/create_us_state"
        redirect_to("/us_states")
      else
        redirect_back(:fallback_location => "/", :notice => "Us state created successfully.")
      end
    else
      render("us_states/new.html.erb")
    end
  end

  def edit
    @us_state = UsState.find(params[:id])

    render("us_states/edit.html.erb")
  end

  def update
    @us_state = UsState.find(params[:id])

    @us_state.state_name = params[:state_name]

    save_status = @us_state.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/us_states/#{@us_state.id}/edit", "/update_us_state"
        redirect_to("/us_states/#{@us_state.id}", :notice => "Us state updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Us state updated successfully.")
      end
    else
      render("us_states/edit.html.erb")
    end
  end

  def destroy
    @us_state = UsState.find(params[:id])

    @us_state.destroy

    if URI(request.referer).path == "/us_states/#{@us_state.id}"
      redirect_to("/", :notice => "Us state deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Us state deleted.")
    end
  end
end
