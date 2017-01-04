class InteractionQuestionsController < ApplicationController
  def index
    @interaction_questions = InteractionQuestion.page(params[:page]).per(10)

    render("interaction_questions/index.html.erb")
  end

  def show
    @interaction_question = InteractionQuestion.find(params[:id])

    render("interaction_questions/show.html.erb")
  end

  def new
    @interaction_question = InteractionQuestion.new

    render("interaction_questions/new.html.erb")
  end

  def create
    @interaction_question = InteractionQuestion.new

    @interaction_question.interaction_id = params[:interaction_id]
    @interaction_question.question_id = params[:question_id]

    save_status = @interaction_question.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/interaction_questions/new", "/create_interaction_question"
        redirect_to("/interaction_questions")
      else
        redirect_back(:fallback_location => "/", :notice => "Interaction question created successfully.")
      end
    else
      render("interaction_questions/new.html.erb")
    end
  end

  def edit
    @interaction_question = InteractionQuestion.find(params[:id])

    render("interaction_questions/edit.html.erb")
  end

  def update
    @interaction_question = InteractionQuestion.find(params[:id])

    @interaction_question.interaction_id = params[:interaction_id]
    @interaction_question.question_id = params[:question_id]

    save_status = @interaction_question.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/interaction_questions/#{@interaction_question.id}/edit", "/update_interaction_question"
        redirect_to("/interaction_questions/#{@interaction_question.id}", :notice => "Interaction question updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Interaction question updated successfully.")
      end
    else
      render("interaction_questions/edit.html.erb")
    end
  end

  def destroy
    @interaction_question = InteractionQuestion.find(params[:id])

    @interaction_question.destroy

    if URI(request.referer).path == "/interaction_questions/#{@interaction_question.id}"
      redirect_to("/", :notice => "Interaction question deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Interaction question deleted.")
    end
  end
end
