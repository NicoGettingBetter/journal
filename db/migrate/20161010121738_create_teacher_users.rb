class CreateTeacherUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :teacher_users, id: :uuid do |t|
      t.belongs_to :teacher, null: false, type: :uuid
      t.belongs_to :user,    null: false, type: :uuid

      t.timestamps
    end
  end
end
