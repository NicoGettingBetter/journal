class StudentsController < ApplicationController
  before_action :authenticate_user!

  def index
    respond_with Student.all
  end

  def create
    group = Group.find_by(id: student_params[:group_id])
    if (student_params[:group_id] && !group)
      return render json: { error: 'Group not found' }, status: 404
    end
    student = Student.create(student_params.except(:year, :group_id))
    if (student_params[:group_id])
      student.student_groups.create(group_id: group.id, year: student_params[:year])
    end
    respond_with student
  end

  def update
    group = Group.find_by(id: student_params[:group_id])
    if (student_params[:group_id] && !group)
      return render json: { error: 'Group not found' }
    end
    student = Student.find_by(id: params[:id])
    student.update(student_params.except(:year, :group_id))
    if (student_params[:group_id] && !student.students_group.find_by(group_id: group.id, year: student_params[:year]))
      student.student_groups.create(group_id: group.id, year: student_params[:year])
    end
    respond_with student
  end

  def destroy
    respond_with Student.find_by(id: params[:id]).destroy 
  end

  def show
    respond_with Student.find_by(id: params[:id])
  end

  private
    def student_params
      params.require(:student).permit(:id, :name, :record_book_number, :group_id, :year)
    end
end
