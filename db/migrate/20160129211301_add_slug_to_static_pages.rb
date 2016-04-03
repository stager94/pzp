class AddSlugToStaticPages < ActiveRecord::Migration
  def change
    add_column :static_pages, :slug, :sting
  end
end
