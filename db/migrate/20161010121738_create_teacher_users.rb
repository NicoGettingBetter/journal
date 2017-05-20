class CreateTeacherUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :teacher_users do |t|
      t.belongs_to :teacher, null: false
      t.belongs_to :user,    null: false

      t.timestamps
    end
  end
end
