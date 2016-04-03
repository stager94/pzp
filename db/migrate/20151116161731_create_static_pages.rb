class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :title
      t.text :short_description
      t.text :description

      t.timestamps null: false
    end
  end
end
