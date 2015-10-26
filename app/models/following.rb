class Following < ActiveRecord::Base
	# Relationships
	belongs_to :user
	belongs_to :followee, class_name: 'User'

	# Validations
	validates :user, :followee, presence: true
end
