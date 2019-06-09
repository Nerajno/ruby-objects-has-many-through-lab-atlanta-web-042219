require "pry"

class Artist

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def songs
        Song.all.select{|song|song.artist == self} 
    end 
    
    def new_song(name,genre)
        new_song = Song.new(name, self, genre)
    end

    def genres
        songs.collect{|song|song.genre}
        # binding.pry
    end

    # expected: #<Genre:0x00007f997c874d68 @name="rap">
    # got: #<Genre:0x00007f997c877ba8 @name="rap">

end