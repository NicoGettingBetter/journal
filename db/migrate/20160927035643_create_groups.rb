class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :number
      t.string :faculty

      t.timestamps
    end
  end
end
