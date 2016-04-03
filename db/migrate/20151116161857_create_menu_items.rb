class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.integer :itemable_id
      t.string :itemable_type
      t.string :url

      t.timestamps null: false
    end
  end
end
