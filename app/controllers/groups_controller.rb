class GroupsController < ApplicationController
  before_action :authenticate_user!
  extend GroupsDoc

  index_doc
  def index
    respond_with Group.all
  end

  create_doc
  def create
    respond_with Group.create(group_params)
  end

  update_doc
  def update
    respond_with Group.update(group_params)
  end

  destroy_doc
  def destroy
    respond_with Group.find_by(id: params[:id]).destroy 
  end

  show_doc
  def show
    respond_with Group.find_by(id: params[:id])
  end

  private
    def group_params
      params.permit(:id, :number, :faculty)
    end
end
