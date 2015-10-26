class Document < ActiveRecord::Base
	# Relationships
	has_many :slides
	belongs_to :user
end
