class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.belongs_to :user, null: false

      t.timestamps
    end
  end
end
