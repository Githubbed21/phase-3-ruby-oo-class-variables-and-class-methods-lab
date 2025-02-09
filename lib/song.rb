class Song 
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
    end


    def self.count
      @@count
    end
    
    def self.genres
      @@genres.uniq
    end

    def self.genre_count
      genre_count = {} # sets genre_count to an empty hash.
      @@genres.each do |genre| # itereate through the @@genres array.
        if genre_count[genre] # check if the genre already exists in the hash.
          genre_count[genre] += 1 # if the genre exists in the hash, increment it's value by 1.
        else
          genre_count[genre] = 1 # if it's a new genre set it's value to 1.
        end
      end
      genre_count 
    end
  
    def self.artists
      @@artists.uniq
    end

    def self.artist_count
      artist_count = {} # sets artist_count to an empty hash.
      @@artists.each do |artist| # itereate through the @@artists array.
        if artist_count[artist] # check if the artist already exists in the hash.
          artist_count[artist] += 1 # if the artist exists in the hash, increment it's value by 1.
        else
          artist_count[artist] = 1 # if it's a new artist set it's value to 1.
        end
      end
      artist_count # returns the artist_count hash.
    end
  
  end
 