class CollegesController < ApplicationController
  def index
    @q = College.ransack(params[:q])
    @colleges = @q.result(:distinct => true).includes(:users, :contacts).page(params[:page]).per(10)

    render("colleges/index.html.erb")
  end

  def show
    @contact = Contact.new
    @user = User.new
    @college = College.find(params[:id])

    render("colleges/show.html.erb")
  end

  def new
    @college = College.new

    render("colleges/new.html.erb")
  end

  def create
    @college = College.new

    @college.college_name = params[:college_name]

    save_status = @college.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/colleges/new", "/create_college"
        redirect_to("/colleges")
      else
        redirect_back(:fallback_location => "/", :notice => "College created successfully.")
      end
    else
      render("colleges/new.html.erb")
    end
  end

  def edit
    @college = College.find(params[:id])

    render("colleges/edit.html.erb")
  end

  def update
    @college = College.find(params[:id])

    @college.college_name = params[:college_name]

    save_status = @college.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/colleges/#{@college.id}/edit", "/update_college"
        redirect_to("/colleges/#{@college.id}", :notice => "College updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "College updated successfully.")
      end
    else
      render("colleges/edit.html.erb")
    end
  end

  def destroy
    @college = College.find(params[:id])

    @college.destroy

    if URI(request.referer).path == "/colleges/#{@college.id}"
      redirect_to("/", :notice => "College deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "College deleted.")
    end
  end
end
