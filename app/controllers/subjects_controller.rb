class SubjectsController < ApplicationController
  before_action :authenticate_user!
  extend SubjectsDoc

  index_doc
  def index
    respond_with Subject.all
  end

  create_doc
  def create
    respond_with Subject.create(subject_params)
  end

  update_doc
  def update
    respond_with Subject.update(subject_params)
  end

  destroy_doc
  def destroy
    respond_with Subject.find_by(id: params[:id]).destroy 
  end

  show_doc
  def show
    respond_with Subject.find_by(id: params[:id])
  end

  private

  def subject_params
    params.permit(:id, :name)
  end
end
