class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students, id: :uuid do |t|
      t.string :record_book_number, null: false
      t.string :name,               null: false

      t.timestamps
    end
  end
end
