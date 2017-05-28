class TeachersController < ApplicationController
  skip_before_action  :verify_authenticity_token

  def index
    respond_with Teacher.all
  end

  def create
    respond_with Teacher.create(teacher_params)
  end

  def update
    respond_with Teacher.update(teacher_params)
  end

  def destroy
    respond_with Teacher.find_by(id: params[:id]).destroy 
  end

  def show
    respond_with Teacher.find_by(id: params[:id])
  end

  private
    def teacher_params
      params.require(:teacher).permit(:id, :name, :department)
    end
end
