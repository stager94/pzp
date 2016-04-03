class AddSlugToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :slug, :sting
  end
end
