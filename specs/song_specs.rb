require("minitest/autorun")
require("minitest/rg")
require_relative("../song.rb")

class TestSong < MiniTest::Test

  def setup()
    @song = Song.new("Chunk", "Stepping Stones")
  end

  def test_song_artist
    actual = @song.artist
    assert_equal("Chunk", actual)
  end

  def test_song_title
    actual = @song.title
    assert_equal("Stepping Stones", actual)
  end


end
