
class Artist

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    # def songs
    #     @@all 
    # end
#why does this instance method affect the subsequent???!

    def songs
        Song.all.select do |s|
            s.artist == self
        end
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song)
        new_song = Song.new(song)
        new_song.artist = self
    end

    def self.song_count
       Song.all.size
    end

end