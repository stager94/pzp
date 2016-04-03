class ChangeFieldsInArticles < ActiveRecord::Migration
  def change
  	add_column :articles, :description, :text 
  	remove_column :static_pages, :short_description
  end
end
