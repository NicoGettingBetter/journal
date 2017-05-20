class CreateGroupPage < ActiveRecord::Migration[5.0]
  def change
    create_table :group_pages, id: false do |t|
      t.belongs_to :group, null: false, type: :uuid
      t.belongs_to :page,  null: false, type: :uuid
    end
  end
end
