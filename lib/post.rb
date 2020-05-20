class Post 
  attr_accessor :title, :author
  @@all = []
  
  def initialize(title)
    @title = title
   @@all << self #put the stuff into the empty array
  end

  def self.all
  @@all
  end

  
  
  def author_name
   if self.author
   self.author.name
   else 
   nil
   end
  end
  
end