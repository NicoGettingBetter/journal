class CreateStudentGroup < ActiveRecord::Migration[5.0]
  def change
    create_table :student_groups, id: false do |t|
      t.belongs_to :student, null: false
      t.belongs_to :group,   null: false
      t.string :year,        null: false
    end
  end
end
