class StudentPunchedCardsController < ApplicationController
  skip_before_action  :verify_authenticity_token

  def index
    respond_with StudentPunchedCard.all
  end

  def create
    respond_with StudentPunchedCard.create(student_punched_card_params)
  end

  def update
    respond_with StudentPunchedCard.update(student_punched_card_params)
  end

  def destroy
    respond_with StudentPunchedCard.find_by(id: params[:id]).destroy 
  end

  def show
    respond_with StudentPunchedCard.find_by(id: params[:id])
  end

  private
    def student_punched_card_params
      params.require(:student_punched_card).permit(:id, :punched_card_id, :student_id, :date, :mark)
    end
end
