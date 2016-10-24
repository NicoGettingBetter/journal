class CreateSubjectGroup < ActiveRecord::Migration[5.0]
  def change
    create_table :subject_groups do |t|
      t.belongs_to :subject
      t.belongs_to :group
      t.string :year
    end
  end
end
