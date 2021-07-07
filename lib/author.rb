class Author
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(pst)
    pst.author = self
  end
  
  def add_post_by_title(title)
    pst = Post.new(title)
    pst.author = self
  end
  
  def self.post_count
    return Post.all.count {|pst| pst.author != nil}
  end
  
  def posts
    Post.all.select {|pst| pst.author == self}
  end
end
