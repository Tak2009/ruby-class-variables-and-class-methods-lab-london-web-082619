require 'pry'
class Song

    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    
    def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
    
    end
    
    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count_hash = {}
        @@genres.each do |genre| 
            if genre_count_hash[genre]
               genre_count_hash[genre] += 1
            else
               genre_count_hash[genre] = 1
            end
        end
        genre_count_hash
    end 

    def self.artist_count
        artist_count_hash = {}
        @@artists.each do |artist| 
            if artist_count_hash[artist]
               artist_count_hash[artist] += 1
            else
               artist_count_hash[artist] = 1
            end
        end
        artist_count_hash
    end 
   
    def test_method
      p @@count
      p @@artists
      p @@genres
    end

      

end

tk = Song.new("TakeshiAwesome","Takeshi","Rock")
ek = Song.new("EtsukoGreat","Etsuko","Enka")
sk = Song.new("SusumuIkiru","Susumu","Enka")
ek.name
ek.test_method


binding.pry
"test"
