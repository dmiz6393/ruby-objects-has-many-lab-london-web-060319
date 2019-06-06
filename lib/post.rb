class Post
  @@all=[]
  attr_accessor :author, :title
 
  def initialize(title)
    @title = title
  end 
  
  def author_name
    if author 
      self.author.name 
    else
      nil
    end
  end
  
  def self.all 
    @@posts
  end 
end 

