class PagesController < ApplicationController
  skip_before_action  :verify_authenticity_token

  def index
    respond_with Page.all
  end

  def create
    respond_with Page.create(page_params)
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
end
