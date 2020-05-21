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
    single_genre = []
    
    @@genre.each do |genre|
      
      if single_genre.include?(genre)
        single_genre
      else
        single_genre << genre
      end
    end
    return single_genre 
  end


  def self.artists
    
    @@artists
    
  end
  
    
  
  
  def self.count
    @@count
  end
  
  def self.genre_count
    hash  = {}
    
    @@genres.each do |genre|
      if hash.key == genre
        hash[genre].value + 1 
      else
        hash[genre] = 1 
      end
      
    end
    hash
  end

  
  
  
  
  
  
  
  
end