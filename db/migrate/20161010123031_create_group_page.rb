class CreateGroupPage < ActiveRecord::Migration[5.0]
  def change
    create_table :group_pages, id: false do |t|
      t.belongs_to :group, null: false
      t.belongs_to :page,  null: false
    end
  end
end
