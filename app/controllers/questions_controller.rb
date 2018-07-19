class QuestionsController < ApplicationController

  before_action :move_to_index, except: [:index, :show]

    def index
#      @questions = Question.order("created_at DESC").page(params[:page]).per(5)
      question_table  = Question.arel_table
      answer_table = Answer.arel_table
      condition = answer_table[:question_id].eq(question_table[:id])
      @questions__has_answer = Question.where(Answer.where(condition).exists).order("created_at DESC").page(params[:page]).per(5)
      @questions__no_answer  = Question.where(Answer.where(condition).exists.not).order("created_at DESC").page(params[:page]).per(5)
    end

    def new
      @athlete = Athlete.find(params[:id])
    end

    def create
        Question.create(title: params[:title], text:params[:text], user_id: current_user.id, athlete_id: params[:id] )
    end

    def show
      @question = Question.find(params[:id])
    end

  def move_to_index
     redirect_to action: :index unless user_signed_in?
  end

end
