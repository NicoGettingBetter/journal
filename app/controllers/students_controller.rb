class StudentsController < ApplicationController
  before_action :authenticate_user!
  extend StudentsDoc

  index_doc
  def index
    respond_with Student.all
  end

  create_doc
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

  update_doc
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

  destroy_doc
  def destroy
    respond_with Student.find_by(id: params[:id]).destroy 
  end

  show_doc
  def show
    respond_with Student.find_by(id: params[:id])
  end

  private
    def student_params
      params.permit(:id, :name, :record_book_number, :group_id, :year)
    end
end
