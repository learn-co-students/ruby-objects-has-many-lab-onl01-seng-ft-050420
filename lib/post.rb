class Post

  attr_accessor :author, :title

  @@all = []

  def initialize (title)
    @title = title
    save
  end

  def author=(author)
    @author = author
  end

  def author_name
    if @author == nil
      nil
    else
    self.author.name
  end
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

end
