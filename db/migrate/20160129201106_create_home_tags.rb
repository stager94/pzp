class CreateHomeTags < ActiveRecord::Migration
  def change
    create_table :home_tags do |t|
      t.string :title
      t.boolean :active, default: true

      t.timestamps null: false
    end
  end
end
