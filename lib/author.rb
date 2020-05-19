class Author 
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    Post.all.select{|posts| posts.author == self}
  end
  
  def self.post_count
    Post.all.count
  end
  
  def add_post(posts)
    posts.author = self
    @posts << posts 
  end
    
    
  
  def add_post_by_title(title)
    title = Post.new(title)
    add_post(title)
  end
  
  
    
  
  
  
end