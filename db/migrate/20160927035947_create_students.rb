class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :record_book_number

      t.timestamps
    end
  end
end
