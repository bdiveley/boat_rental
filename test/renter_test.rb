require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require 'pry'

class RenterTest < Minitest::Test

  def test_instance_exists
    renter = Renter.new("Patrick Star", "4242424242424242")

    assert_instance_of Renter, renter
  end

  def test_instance_variables
    renter = Renter.new("Patrick Star", "4242424242424242")

    assert_equal "Patrick Star", renter.name
    assert_equal "4242424242424242", renter.credit_card_number
  end 

end
