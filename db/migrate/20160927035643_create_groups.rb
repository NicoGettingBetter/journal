class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups, id: :uuid do |t|
      t.string :faculty, null: false
      t.string :number,  null: false

      t.timestamps
    end
  end
end
