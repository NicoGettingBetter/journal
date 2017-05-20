class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers, id: :uuid do |t|
      t.string :department, null: false
      t.string :name,       null: false

      t.timestamps
    end
  end
end
