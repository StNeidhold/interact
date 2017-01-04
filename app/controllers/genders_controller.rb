class GendersController < ApplicationController
  def index
    @genders = Gender.page(params[:page]).per(10)

    render("genders/index.html.erb")
  end

  def show
    @contact = Contact.new
    @user = User.new
    @gender = Gender.find(params[:id])

    render("genders/show.html.erb")
  end

  def new
    @gender = Gender.new

    render("genders/new.html.erb")
  end

  def create
    @gender = Gender.new

    @gender.gender = params[:gender]

    save_status = @gender.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/genders/new", "/create_gender"
        redirect_to("/genders")
      else
        redirect_back(:fallback_location => "/", :notice => "Gender created successfully.")
      end
    else
      render("genders/new.html.erb")
    end
  end

  def edit
    @gender = Gender.find(params[:id])

    render("genders/edit.html.erb")
  end

  def update
    @gender = Gender.find(params[:id])

    @gender.gender = params[:gender]

    save_status = @gender.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/genders/#{@gender.id}/edit", "/update_gender"
        redirect_to("/genders/#{@gender.id}", :notice => "Gender updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Gender updated successfully.")
      end
    else
      render("genders/edit.html.erb")
    end
  end

  def destroy
    @gender = Gender.find(params[:id])

    @gender.destroy

    if URI(request.referer).path == "/genders/#{@gender.id}"
      redirect_to("/", :notice => "Gender deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Gender deleted.")
    end
  end
end
