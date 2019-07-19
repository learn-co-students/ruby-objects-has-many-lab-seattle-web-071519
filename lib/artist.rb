class Artist
    attr_accessor :name, :songs
    @@all = []
    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def add_song(song)
        @songs << song
        song.artist = self
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name, self)
        @songs << song
    end
        


    def self.song_count
        song_array = @@all.map do |artist|
            artist.songs.length
        end
        song_array.sum
        
    end
end