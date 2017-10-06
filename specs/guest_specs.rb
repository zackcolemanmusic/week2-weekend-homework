require("minitest/autorun")
require("minitest/rg")
require_relative("../guest.rb")

class TestGuest < MiniTest::Test

  def setup()
    @guest = Guest.new("Zack")
  end

  def test_guest_name
    actual = @guest.name
    assert_equal("Zack", actual)
  end

end
