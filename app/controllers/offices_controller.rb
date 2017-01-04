class OfficesController < ApplicationController
  def index
    @q = Office.ransack(params[:q])
    @offices = @q.result(:distinct => true).includes(:firm, :city).page(params[:page]).per(10)

    render("offices/index.html.erb")
  end

  def show
    @office = Office.find(params[:id])

    render("offices/show.html.erb")
  end

  def new
    @office = Office.new

    render("offices/new.html.erb")
  end

  def create
    @office = Office.new

    @office.firm_id = params[:firm_id]
    @office.city_id = params[:city_id]
    @office.firm_hq = params[:firm_hq]

    save_status = @office.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/offices/new", "/create_office"
        redirect_to("/offices")
      else
        redirect_back(:fallback_location => "/", :notice => "Office created successfully.")
      end
    else
      render("offices/new.html.erb")
    end
  end

  def edit
    @office = Office.find(params[:id])

    render("offices/edit.html.erb")
  end

  def update
    @office = Office.find(params[:id])

    @office.firm_id = params[:firm_id]
    @office.city_id = params[:city_id]
    @office.firm_hq = params[:firm_hq]

    save_status = @office.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/offices/#{@office.id}/edit", "/update_office"
        redirect_to("/offices/#{@office.id}", :notice => "Office updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Office updated successfully.")
      end
    else
      render("offices/edit.html.erb")
    end
  end

  def destroy
    @office = Office.find(params[:id])

    @office.destroy

    if URI(request.referer).path == "/offices/#{@office.id}"
      redirect_to("/", :notice => "Office deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Office deleted.")
    end
  end
end
