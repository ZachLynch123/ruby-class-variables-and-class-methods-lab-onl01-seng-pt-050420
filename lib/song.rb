class Song 
  @@count = 0 
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@genres << @genre
    @@artists << @artist
    
    @@count += 1 
  end
  
  def self.genres
    @single_genre = []
    
    @@genres.each do |genre|
      
      if @single_genre.include?(genre)
        puts genre
      else
        @single_genre << genre
      end
    end
    return @single_genre 
  end


  def self.artists
    
    @unique_artists = []
    
    @@artists.each do |artist|
      
      if @unique_artists.include?(artist)
        puts artist
      else
        @unique_artists << artist
      end
    end
  return @unique_artists

  end
  
    
  
  
  def self.count
    @@count
  end
  
  def self.genre_count
    hash  = {}
    
    @@genres.each do |genre|
      if hash.key?(genre)
        hash[genre] += 1  
      else
        hash[genre] = 1 
      end
      
    end
    hash
  end

  
  
  
  
  
  
  
  
end