class Author
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def save
    @@all << self
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end
    
  def add_post(post)
    post.author = self
  end
  
  def posts
    Post.all.select { |post| post.author == self }
  end 
  
  def self.post_count
    post_num_arr = @@all.map { |author_obj| author_obj.posts.length }
    post_num_arr.reduce { |acc, cur| acc + cur }
  end 
end