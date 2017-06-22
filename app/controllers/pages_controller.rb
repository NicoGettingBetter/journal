class PagesController < ApplicationController
  before_action :authenticate_user!
  extend PagesDoc

  index_doc
  def index
    respond_with Page.all
  end

  create_doc
  def create
    pages = Page.create(pages_params)
    pages_ids = pages.map{|e| e.id}
    if pages_ids.index(nil)
      render json: { error: pages[pages_ids.index(nil)].errors.full_messages }, status: :error
    else
      render json: :success
    end
  end

  update_doc
  def update
    respond_with Page.update(page_params)
  end

  destroy_doc
  def destroy
    respond_with Page.find_by(id: params[:id]).destroy 
  end

  show_doc
  def show
    respond_with Page.find_by(id: params[:id])
  end

  private
    def page_params
      params.require(:page).permit(:id, :kind_of_lesson, :comment, :user_id, :subject_id)
    end

    def pages_params
      params.require(:pages).map{|p| p.permit(:id, :kind_of_lesson, :comment, :user_id, :subject_id)}
    end
end
