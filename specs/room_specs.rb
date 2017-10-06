require("minitest/autorun")
require("minitest/rg")
require_relative("../room.rb")
require_relative("../guest.rb")
require_relative("../song.rb")


class TestRoom < MiniTest::Test

  def setup
    @room = Room.new()
    @guest = Guest.new("Zack")
    @song = Song.new("Chunk", "Stepping Stones")
  end

  def test_room_has_no_guests()
    actual = @room.number_of_guests()
    assert_equal(0, actual)
  end

  def test_check_in_guest()
    @room.check_in_guest(@guest)
    actual = @room.guests[0].name
    assert_equal("Zack", actual)
  end

  def test_check_out_guest
    @room.check_in_guest(@guest)
    @room.check_out_guest(@guest)
    actual = @room.guests
    assert_equal([], actual)
  end

  def test_add_song_to_room
    @room.add_song_to_room(@song)
    actual = @room.songs
    assert_equal([@song],actual)
  end


end
