class Room

  attr_accessor(:guests, :songs)

  def initialize
    @guests = []
    @songs = []
  end

  def number_of_guests()
    return @guests.length()
  end

  def check_in_guest(new_guest)
    self.guests.push(new_guest)
  end

  def check_out_guest(old_guest)
    self.guests.delete(old_guest)
  end

  def add_song_to_room(song)
    @songs.push(song)
  end


end
