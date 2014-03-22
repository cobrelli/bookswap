class User < ActiveRecord::Base

	has_secure_password

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	has_many :books
	has_many :interests

	validates :password, :format => {:with => /(?=.*\d)(?=.*[A-Z])(?=.*[a-zA-Z]).{4,}/ }
	validates :name, uniqueness: true, presence: true, length: { maximum: 50 }
	validates :email, presence: true, uniqueness: true, length: { maximum: 50 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
end
