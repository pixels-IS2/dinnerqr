require 'test_helper'

class DishTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  #debugger

  test "dishes is valid" do
  	dish = dishes(:one)
  	#debugger
  	assert dish.valid?
  end
end
