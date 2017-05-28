class CreatePunchedCards < ActiveRecord::Migration[5.0]
  def change
    create_table :punched_cards, id: :uuid do |t|
      t.belongs_to :subject_group, null: false, type: :uuid
      
      t.string :type_of_controll,  null: false
      t.integer :max_mark,         null: false
      t.date :deadline,            null: false

      t.timestamps
    end
  end
end
