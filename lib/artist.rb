class Artist
  attr_accessor :name
  @@songs=[]
  
  def initialize(name)
    @name = name
    @@songs<<self
  end
  
  def add_song(song)
     song.artist=self 
     @@songs<<song 
  end 
  
  def self.all
    @@songs 
  end 

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
    @@songs<<song 
  end
  
   def self.song_count
     Song.all.count 
   end 
  
  def songs 
  @@songs 
  end 

end 