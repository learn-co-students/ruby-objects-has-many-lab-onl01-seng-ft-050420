class Author  #s initialized with a name

  attr_accessor :name, :posts  #has an attr_accessor for name

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []  # is a class variable set to an array
  end

  def add_post(post)  #takes in an argument of a post and associates that post with
                      #the author by telling the post that it belongs to that author
    self.posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)   #takes in an argument of a post title, creates a new post
                                  #with it and associates the post and author
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def self.post_count
    Song.all.count
  end
end
