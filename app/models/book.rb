class Book < ActiveRecord::Base

	belongs_to :user
	#has_one :user
	#has_many :interests

	has_many :interests
	#has_many :users, through: :interests


	validates(:name, presence: true)
	validates(:author, presence: true)
	validates(:value, presence: true)
end
