class CreateStudentPunchedCard < ActiveRecord::Migration[5.0]
  def change
    create_table :student_punched_cards, id: false do |t|
      t.belongs_to :punched_card, null: false, type: :uuid
      t.belongs_to :student,      null: false, type: :uuid
      
      t.date :date,               null: false
      t.integer :mark,            null: false
    end
  end
end
