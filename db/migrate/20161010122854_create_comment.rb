class CreateComment < ActiveRecord::Migration[5.0]
  def change
    create_table :comments, id: false do |t|
      t.date :date
      t.integer :attendance
      t.string :student_comment
      t.belongs_to :page
      t.belongs_to :student
    end
  end
end
