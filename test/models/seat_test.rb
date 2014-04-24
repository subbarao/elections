require 'test_helper'

class SeatTest < ActiveSupport::TestCase
  def test_validations
		seat1 = Seat.create(name: "machilipatnam", type: "")
		seat2 = Seat.create(name: "MACHILIPATNAM", type: "Mp")
		seat3 = Seat.create(name: "machilipatnam", type: "Mp")

		assert_not_equal true, seat1.valid?
		assert_equal true, seat2.valid?
		assert_not_equal true, seat3.valid?
  end
end
