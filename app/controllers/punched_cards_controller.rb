class PunchedCardsController < ApplicationController
  before_action :authenticate_user!
  extend PunchedCardsDoc

  index_doc
  def index
    respond_with PunchedCard.all
  end

  create_doc
  def create
    respond_with PunchedCard.create(punched_card_params)
  end

  update_doc
  def update
    respond_with PunchedCard.update(punched_card_params)
  end

  destroy_doc
  def destroy
    respond_with PunchedCard.find_by(id: params[:id]).destroy 
  end

  show_doc
  def show
    respond_with PunchedCard.find_by(id: params[:id])
  end

  private
    def punched_card_params
      params.permit(:id, :type_of_controll, :deadline, :max_mark, :subject_group_id)
    end
end
