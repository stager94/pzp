class AddStatisPageIdToMenuItem < ActiveRecord::Migration
  def change
    add_reference :menu_items, :static_page, index: true, foreign_key: true
    remove_column :menu_items, :itemable_type
    remove_column :menu_items, :itemable_id
  end
end
