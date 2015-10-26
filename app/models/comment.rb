class Comment < ActiveRecord::Base
	# Relationships
	belongs_to :user
	belongs_to :slide

	# Validations
	validates :content, presence: true
end
