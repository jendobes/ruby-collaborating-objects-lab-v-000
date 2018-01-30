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
  song.artist = artist_name
  song
end

end
