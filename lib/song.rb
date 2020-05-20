class Song 
  
  attr_accessor :name, :artist, :genre 
  attr_reader :name, :artist, :genre
  
  @@count = 0 
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre 
    @@count += 1
    @@artists.push(@artist)
    @@genres.push(@genre)
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
    @@genres.insert(Hash.new(0)) { |x, y| x[y] += 1; return x}
  end
  
  def self.artist_count
    @@artists.insert(Hash.new(0))
  end
  
  
  
  
  
  
end