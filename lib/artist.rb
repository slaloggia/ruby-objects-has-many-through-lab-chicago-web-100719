class Artist
    attr_reader :name
    @@all = []
    
        def initialize(name)
            @name = name
            @@all << self
        end
    
        def self.all
            @@all
        end
    
        def new_song(title, genre)
            Song.new(title, self, genre)
        end
    
        def songs
            Song.all.select {
                |song| song.artist.name == self.name
            }
        end
    
        def genres
            songs.collect { |song| song.genre}
        end
    end