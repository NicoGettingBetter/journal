class AddUniqnessToComments < ActiveRecord::Migration[5.0]
  def change
    add_index :comments, [:date, :page_id, :student_id], unique: true
  end
end
