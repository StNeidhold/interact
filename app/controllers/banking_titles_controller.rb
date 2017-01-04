class BankingTitlesController < ApplicationController
  def index
    @banking_titles = BankingTitle.all

    render("banking_titles/index.html.erb")
  end

  def show
    @contact = Contact.new
    @banking_title = BankingTitle.find(params[:id])

    render("banking_titles/show.html.erb")
  end

  def new
    @banking_title = BankingTitle.new

    render("banking_titles/new.html.erb")
  end

  def create
    @banking_title = BankingTitle.new

    @banking_title.firm_id = params[:firm_id]
    @banking_title.title = params[:title]

    save_status = @banking_title.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/banking_titles/new", "/create_banking_title"
        redirect_to("/banking_titles")
      else
        redirect_back(:fallback_location => "/", :notice => "Banking title created successfully.")
      end
    else
      render("banking_titles/new.html.erb")
    end
  end

  def edit
    @banking_title = BankingTitle.find(params[:id])

    render("banking_titles/edit.html.erb")
  end

  def update
    @banking_title = BankingTitle.find(params[:id])

    @banking_title.firm_id = params[:firm_id]
    @banking_title.title = params[:title]

    save_status = @banking_title.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/banking_titles/#{@banking_title.id}/edit", "/update_banking_title"
        redirect_to("/banking_titles/#{@banking_title.id}", :notice => "Banking title updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Banking title updated successfully.")
      end
    else
      render("banking_titles/edit.html.erb")
    end
  end

  def destroy
    @banking_title = BankingTitle.find(params[:id])

    @banking_title.destroy

    if URI(request.referer).path == "/banking_titles/#{@banking_title.id}"
      redirect_to("/", :notice => "Banking title deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Banking title deleted.")
    end
  end
end
