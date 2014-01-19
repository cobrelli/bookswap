class Book < ActiveRecord::Base

	belongs_to :user
	
	has_many :interests

	validates(:user, presence: true)
	validates(:name, presence: true)
	validates(:author, presence: true)
	validates(:value, presence: true)
end
