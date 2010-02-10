require 'test_helper'

class RoomTest < ActiveSupport::TestCase

  fixtures :all

  test "rooms require all fields" do
    r = Room.new
	assert !r.valid?
	
	b = building(:union)
	r.building = b
	r.name = '123'
	r.description = 'Aoeu loris ipsum.'
  end

end
