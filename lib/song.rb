require 'pry'

class Song

attr_accessor :artist, :name

def initialize(name)
  @name = name
end

def self.new_by_filename(file)
  #parse the song and artist which are separated by -
  parts = file.split(/\ - |\./)
  artist_name = parts[0]
  song_name = parts[1]

  song = self.new(song_name)
  song.name = song_name
  song.artist = Artist.find_or_create_by_name(artist_name)
  artist_name.add_song(self)
  song
end

end
