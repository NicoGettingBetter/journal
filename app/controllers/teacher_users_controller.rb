class TeacherUsersController < ApplicationController
  before_action :authenticate_user!

  def index
    respond_with User.all
  end

  def create
    respond_with User.create(user_params)
  end

  def update
    respond_with User.update(user_params)
  end

  def destroy
    respond_with User.find_by(id: params[:id]).destroy 
  end

  def show
    respond_with User.find_by(id: params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:login, :password, :teacher_id)
    end
end
