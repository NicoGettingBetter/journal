class CreatePunchedCards < ActiveRecord::Migration[5.0]
  def change
    create_table :punched_cards do |t|
      t.string :type_of_controll
      t.belongs_to :subject_group
      t.date :deadline
      t.integer :max_mark

      t.timestamps
    end
  end
end
