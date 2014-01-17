class User < ActiveRecord::Base

	has_many :users
	#has_many :interests

	validates :name, presence: true
	validates :email, presence: true
end
