class User < ActiveRecord::Base
	# Bcrypt
	has_secure_password

	# Relationships
	has_many :followings
	has_many :followees, through: :followings
	has_many :documents
	has_many :comments, dependent: :destroy

	# Validations
	validates :name,
			   presence: true,
               length: {minimum: 2, maximum: 50},
               format: /[A-Za-z]+/

    validates :email, 
    		   presence: true,
    		   format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
    		   on: :create
end
