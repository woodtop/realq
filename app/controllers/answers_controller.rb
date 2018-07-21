class AnswersController < ApplicationController

  before_action :move_to_index, except: [:create]

  def new
    @question = Question.find(params[:id])
  end

  def create
    Answer.create(text: params[:text], question_id: params[:id])
    @athlete = Athlete.find_by(user_id: current_user.id)
    render template: "athletes/show"
  end


  def move_to_index
     redirect_to action: :index unless user_signed_in?
  end
end
