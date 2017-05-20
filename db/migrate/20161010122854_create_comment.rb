class CreateComment < ActiveRecord::Migration[5.0]
  def change
    create_table :comments, id: false do |t|
      t.belongs_to :student, null: false, type: :uuid
      t.belongs_to :page,    null: false, type: :uuid

      t.string :student_comment, null: false
      t.integer :attendance,     null: false
      t.date :date,              null: false
    end
  end
end
