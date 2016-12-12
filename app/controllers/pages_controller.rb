class PagesController < ApplicationController
  skip_before_action  :verify_authenticity_token

  def index
    respond_with Page.all
  end

  def create
    array = Page.create(pages_params)
    ids = array.map{|e| e.id}
    if ids.index(nil)
      render json: { error: array[ids.index(nil)].errors.full_messages }, status: :error
    else
      render json: :success
    end
  end

  def update
    respond_with Page.update(page_params)
  end

  def destroy
    respond_with Page.find_by(id: params[:id]).destroy 
  end

  def show
    respond_with Page.find_by(id: params[:id])
  end

  private
    def page_params
      params.require(:page).permit(:kind_of_lesson, :comment, :user_id, :subject_id)
    end

    def pages_params
      params.require(:pages).map{|p| p.permit(:kind_of_lesson, :comment, :user_id, :subject_id)}
    end
end
