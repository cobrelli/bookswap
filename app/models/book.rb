class Book < ActiveRecord::Base
	validates(:name, presence: true)
	validates(:user, presence: true)
	validates(:writer, presence: true)
	validates(:value, presence: true)
end
