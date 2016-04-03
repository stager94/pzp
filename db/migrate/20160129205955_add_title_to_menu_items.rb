class AddTitleToMenuItems < ActiveRecord::Migration
  def change
    add_column :menu_items, :title, :string
  end
end
