class Post 
  
  attr_accessor :author, :title
  
  @@all = []
  
  def initialize(name)
    @title = name
    @@all << self
  end 
  
  def self.all
    @@all
  end 
  
  def author_name
    
    if self.author != nil 
      self.author.name 
    end
    
  end 
  
end 