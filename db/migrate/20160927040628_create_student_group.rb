class CreateStudentGroup < ActiveRecord::Migration[5.0]
  def change
    create_table :student_groups, id: false do |t|
      t.belongs_to :student
      t.belongs_to :group 
      t.string :year
    end
  end
end
