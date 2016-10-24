class PunchedCardsController < ApplicationController
  skip_before_action  :verify_authenticity_token

  def index
    respond_with PunchedCard.all
  end

  def create
    respond_with PunchedCard.create(punched_card_params)
  end

  def update
    respond_with PunchedCard.update(punched_card_params)
  end

  def destroy
    respond_with PunchedCard.find_by(id: params[:id]).destroy 
  end

  def show
    respond_with PunchedCard.find_by(id: params[:id])
  end

  private
    def punched_card_params
      params.require(:punched_card).permit(:type_of_controll, :deadline, :max_mark, :subject_group_id)
    end
end
