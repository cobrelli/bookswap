class User < ActiveRecord::Base

	has_many :books
	
	has_many :interests
	#has_many :books, through: :interests
	validates :name, presence: true
	validates :email, presence: true
end
