class StaticPage < ActiveRecord::Base
	extend FriendlyId
	has_many :menu_items
	
	friendly_id :title, use: [:slugged, :finders, :history]
end
