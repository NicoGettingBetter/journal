class StudentPunchedCardsController < ApplicationController
  before_action :authenticate_user!
  extend StudentPunchedCardsDoc

  index_doc
  def index
    respond_with StudentPunchedCard.all
  end

  create_doc
  def create
    respond_with StudentPunchedCard.create(student_punched_card_params)
  end

  update_doc
  def update
    respond_with StudentPunchedCard.update(student_punched_card_params)
  end

  destroy_doc
  def destroy
    respond_with StudentPunchedCard.find_by(id: params[:id]).destroy 
  end

  show_doc
  def show
    respond_with StudentPunchedCard.find_by(id: params[:id])
  end

  private
    def student_punched_card_params
      params.permit(:id, :punched_card_id, :student_id, :date, :mark)
    end
end
