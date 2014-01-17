class Book < ActiveRecord::Base

	has_many :interests

	validates(:name, presence: true)
	validates(:user, presence: true)
	validates(:author, presence: true)
	validates(:value, presence: true)
end
