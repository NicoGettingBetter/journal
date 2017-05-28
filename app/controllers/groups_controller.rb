class GroupsController < ApplicationController
  skip_before_action  :verify_authenticity_token

  def index
    respond_with Group.all
  end

  def create
    respond_with Group.create(group_params)
  end

  def update
    respond_with Group.update(group_params)
  end

  def destroy
    respond_with Group.find_by(id: params[:id]).destroy 
  end

  def show
    respond_with Group.find_by(id: params[:id])
  end

  private
    def group_params
      params.require(:group).permit(:id, :number, :faculty)
    end
end
