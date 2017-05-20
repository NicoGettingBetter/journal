class CreateComment < ActiveRecord::Migration[5.0]
  def change
    create_table :comments, id: false do |t|
      t.string :student_comment, null: false
      t.belongs_to :student,     null: false
      t.integer :attendance,     null: false
      t.belongs_to :page,        null: false
      t.date :date,              null: false
    end
  end
end
