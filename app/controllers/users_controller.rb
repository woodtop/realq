class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @name = current_user.name
    @questions = Question.where(user_id: current_user.id).page(params[:page]).per(5).order("created_at DESC")
  end
end
