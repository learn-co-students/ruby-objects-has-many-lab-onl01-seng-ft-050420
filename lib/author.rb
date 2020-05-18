class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
  end
  
  def posts 
    Post.all.select {|writing| writing.author == self}
  end
  
  def add_post(writing) 
    writing.author = self
  end
  
  def add_post_by_title(title)
    add_post(Post.new(title))
  end
  
  def self.post_count 
    Post.all.length
  end
  
end
