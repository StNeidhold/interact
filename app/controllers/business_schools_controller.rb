class BusinessSchoolsController < ApplicationController
  def index
    @business_schools = BusinessSchool.all

    render("business_schools/index.html.erb")
  end

  def show
    @business_school = BusinessSchool.find(params[:id])

    render("business_schools/show.html.erb")
  end

  def new
    @business_school = BusinessSchool.new

    render("business_schools/new.html.erb")
  end

  def create
    @business_school = BusinessSchool.new

    @business_school.business_school_name = params[:business_school_name]

    save_status = @business_school.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/business_schools/new", "/create_business_school"
        redirect_to("/business_schools")
      else
        redirect_back(:fallback_location => "/", :notice => "Business school created successfully.")
      end
    else
      render("business_schools/new.html.erb")
    end
  end

  def edit
    @business_school = BusinessSchool.find(params[:id])

    render("business_schools/edit.html.erb")
  end

  def update
    @business_school = BusinessSchool.find(params[:id])

    @business_school.business_school_name = params[:business_school_name]

    save_status = @business_school.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/business_schools/#{@business_school.id}/edit", "/update_business_school"
        redirect_to("/business_schools/#{@business_school.id}", :notice => "Business school updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Business school updated successfully.")
      end
    else
      render("business_schools/edit.html.erb")
    end
  end

  def destroy
    @business_school = BusinessSchool.find(params[:id])

    @business_school.destroy

    if URI(request.referer).path == "/business_schools/#{@business_school.id}"
      redirect_to("/", :notice => "Business school deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Business school deleted.")
    end
  end
end
