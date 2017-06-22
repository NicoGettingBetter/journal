class TeachersController < ApplicationController
  before_action :authenticate_user!
  extend TeachersDoc

  index_doc
  def index
    respond_with Teacher.all
  end

  create_doc
  def create
    respond_with Teacher.create(teacher_params)
  end

  update_doc
  def update
    respond_with Teacher.update(teacher_params)
  end

  destroy_doc
  def destroy
    respond_with Teacher.find_by(id: params[:id]).destroy 
  end

  show_doc
  def show
    respond_with Teacher.find_by(id: params[:id])
  end

  private
    def teacher_params
      params.permit(:id, :name, :department)
    end
end
