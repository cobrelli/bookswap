require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not create empty user" do
  	u = User.new
  	assert !u.save, "Saved empty user"
  end

  test "should not create user without name" do
  	u = User.new
  	u.email = "a@b.fi"
  	assert !u.save, "Saved user without name"
  end

  test "should not create user without email" do
  	u = User.new
  	u.name = "esa"
  	assert !u.save, "Saved user without email"
  end

  test "should not accept invalid emails" do
  	u = User.new
  	u.name = "Erkki Esimerkki"

  	emails = ["a", "a@a", "a.a", "@", 1, "-"]

  	emails.each do |email|
  		u.email = email
  		assert !u.save, "Saved user with invalid email"
  	end
  end

  test "should accept valid email" do
  	u = User.new
  	u.name = "Erkki Esimerkki"
  	u.email = "a@b.fi"
  	assert u.save, "Did not save valid email"
  end
end
