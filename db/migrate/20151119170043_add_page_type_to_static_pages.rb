class AddPageTypeToStaticPages < ActiveRecord::Migration
  def change
    add_column :static_pages, :page_type, :string
  end
end
