class HomeTag < ActiveRecord::Base

	scope :active, -> { where active: true }

end
