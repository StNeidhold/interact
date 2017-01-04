class UserQuestionBanksController < ApplicationController
  def index
    @user_question_banks = UserQuestionBank.page(params[:page]).per(10)

    render("user_question_banks/index.html.erb")
  end

  def show
    @user_question_bank = UserQuestionBank.find(params[:id])

    render("user_question_banks/show.html.erb")
  end

  def new
    @user_question_bank = UserQuestionBank.new

    render("user_question_banks/new.html.erb")
  end

  def create
    @user_question_bank = UserQuestionBank.new

    @user_question_bank.user_id = params[:user_id]
    @user_question_bank.question_id = params[:question_id]

    save_status = @user_question_bank.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/user_question_banks/new", "/create_user_question_bank"
        redirect_to("/user_question_banks")
      else
        redirect_back(:fallback_location => "/", :notice => "User question bank created successfully.")
      end
    else
      render("user_question_banks/new.html.erb")
    end
  end

  def edit
    @user_question_bank = UserQuestionBank.find(params[:id])

    render("user_question_banks/edit.html.erb")
  end

  def update
    @user_question_bank = UserQuestionBank.find(params[:id])

    @user_question_bank.user_id = params[:user_id]
    @user_question_bank.question_id = params[:question_id]

    save_status = @user_question_bank.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/user_question_banks/#{@user_question_bank.id}/edit", "/update_user_question_bank"
        redirect_to("/user_question_banks/#{@user_question_bank.id}", :notice => "User question bank updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "User question bank updated successfully.")
      end
    else
      render("user_question_banks/edit.html.erb")
    end
  end

  def destroy
    @user_question_bank = UserQuestionBank.find(params[:id])

    @user_question_bank.destroy

    if URI(request.referer).path == "/user_question_banks/#{@user_question_bank.id}"
      redirect_to("/", :notice => "User question bank deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "User question bank deleted.")
    end
  end
end
