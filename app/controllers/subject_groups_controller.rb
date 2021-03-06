class SubjectGroupsController < ApplicationController
  before_action :authenticate_user!

  def index
    respond_with SubjectGroup.all
  end

  def create
    respond_with SubjectGroup.create(subject_group_params)
  end

  def update
    respond_with SubjectGroup.update(subject_group_params)
  end

  def destroy
    respond_with SubjectGroup.find_by(id: params[:id]).destroy 
  end

  def show
    respond_with SubjectGroup.find_by(id: params[:id])
  end

  private
    def subject_group_params
      params.permit(:id, :subject_id, :group_id, :year)
    end
end
