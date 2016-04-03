class AddImageToPartners < ActiveRecord::Migration
  def change
  	remove_column :partners, :image
  	add_attachment :partners, :image
  end
end
