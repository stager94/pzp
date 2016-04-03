class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :text
      t.string :title

      t.timestamps null: false
    end
  end
end
