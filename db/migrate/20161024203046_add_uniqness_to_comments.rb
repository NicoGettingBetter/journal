class AddUniqnessToComments < ActiveRecord::Migration[5.0]
  def change
    add_index :comments, [:date_of_lesson, :page_id, :student_id], unique: true
  end
end
