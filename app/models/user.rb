class User < ActiveRecord::Base

	has_many :books
	#has_many :interests

	validates :name, presence: true
	validates :email, presence: true
end
