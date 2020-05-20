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
    @@artists.collect do |x, y|
      if x != y
        artists_list.push(x)
    end
  end
  
  def self.genres
    @@genres
  end
  
  
end