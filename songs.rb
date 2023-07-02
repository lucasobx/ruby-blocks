class Song
    attr_reader :name, :artist, :duration
  
    def initialize(name, artist, duration)
      @name = name
      @artist = artist
      @duration = duration
    end
  
    def play
      puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
    end
end

song1 = Song.new("Song1", "Artist1", 5)
song2 = Song.new("Song2", "Artist2", 7)
song3 = Song.new("Song3", "Artist3", 3)

class Playlist
    def initialize(name)
      @name = name
      @songs = []
    end
  
    def add_song(song)
      @songs << song
    end

    def each
        @songs.each { |s| yield s}
    end
end

playlist = Playlist.new("Electronic")
playlist.add_song(song1)
playlist.add_song(song2)
playlist.add_song(song3)

playlist.each { |s| s.play }