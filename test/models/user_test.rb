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

  test "should not accept too long names" do
  	u = User.new
  	u.name = "a" * 51
  	u.email = "a@b.fi"
  	assert !u.save, "Saves too long username"
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

  test "should not accept too long email" do
  	u = User.new
  	u.name = "Erkki Esimerkki"
  	u.email = "a" * 20 + "@" + "b" * 20+ "." + "fi" * 10
  	assert !u.save, "Accepts too long email"
  end
  
  test "should not accept duplicate emails" do
  	user = User.create name:"Erkki Esimerkki", email:"a@b.fi"
  	user_with_same_email = user.dup
  	assert !user_with_same_email.save, "Accepts users with duplicate email"
  end
end
