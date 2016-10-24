class CreateStudentPunchedCard < ActiveRecord::Migration[5.0]
  def change
    create_table :student_punched_cards, id: false do |t|
      t.belongs_to :punched_card
      t.belongs_to :student
      t.date :date
      t.integer :mark
    end
  end
end
