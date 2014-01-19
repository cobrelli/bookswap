require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not create empty book" do
  	b = Book.new
  	assert !b.save, "Created empty book"
  end

  test "should not create book without user" do
  	b = Book.new
  	b.value = 2
  	b.author = "Kirjoittaja"
  	b.name = "Testikeissi"

  	assert !b.save, "Created book without user"
  end
end
