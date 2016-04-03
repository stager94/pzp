class MenuItem < ActiveRecord::Base
	belongs_to :static_page

	validates_presence_of :title

	def link
		static_page.present? ? static_page : url
	end

	def anchor?
		!title.match("/#").nil?
	end

end