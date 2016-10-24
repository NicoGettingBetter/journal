class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :kind_of_lesson
      t.string :comment
      t.belongs_to :user
      t.belongs_to :subject

      t.timestamps
    end
  end
end
