class CreateGroupPage < ActiveRecord::Migration[5.0]
  def change
    create_table :group_pages, id: false do |t|
      t.belongs_to :group
      t.belongs_to :page
    end
  end
end
