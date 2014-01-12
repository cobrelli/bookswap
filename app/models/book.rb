class Book < ActiveRecord::Base
	validates(:name, presence: true)
	validates(:user, presence: true)
	validates(:author, presence: true)
	validates(:value, presence: true)
end
