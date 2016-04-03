class Partner < ActiveRecord::Base
	has_attached_file :image, styles: {original: "190x95#"}
	validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
