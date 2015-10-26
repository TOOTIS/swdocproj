class Slide < ActiveRecord::Base
	# Relationships
	has_many :comments
	belongs_to :document
end
