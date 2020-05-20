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
    artists_list = []
    artists_list.push(@@artists.uniq)
  end
  
  def self.genres
    @@genres
  end
  
  
end