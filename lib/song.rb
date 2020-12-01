require 'pry'
class Song
        attr_accessor :name, :artist, :genre
        @@count = 0
        @@artists = []
        @@genres = []
        @@genre_count = {}
        @@artist_count = {}
    def initialize(name, artist, genre)
        @@count += 1    
        @name = name
        @artist = artist
        @genre = genre
        @@artists << @artist
        @@genres << @genre
    end
    
    def self.count
        @@count
    end
    
    def self.genres
        @@genres.uniq
    end

    def self.artists
    @@artists.uniq
    end
#https://jerodsanto.net/2013/10/ruby-quick-tip-easily-count-occurrences-of-array-elements/
    def self.genre_count
        @@genres.inject(Hash.new(0)) do |hash, g|
        hash[g] += 1
        hash
        end
    end
#https://jerodsanto.net/2013/10/ruby-quick-tip-easily-count-occurrences-of-array-elements/

    def self.artist_count
        @@artists.inject(Hash.new(0)) do |hash, art|
            hash[art] += 1
            hash
        # counts = Hash.new 0
        # @@artists.each do |art|
        # counts[art] += 1
        # counts
        end
    end

end
