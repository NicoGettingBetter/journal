class CreateSubjectGroup < ActiveRecord::Migration[5.0]
  def change
    create_table :subject_groups, id: :uuid do |t|
      t.belongs_to :subject, null: false, type: :uuid
      t.belongs_to :group,   null: false, type: :uuid
      t.string :year,        null: false
    end
  end
end
