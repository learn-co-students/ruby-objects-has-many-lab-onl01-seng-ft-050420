class Post  #is initialized with an argument of a title
  attr_accessor :title, :author   #has a title
                                  #belongs to an author
    @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

  def self.all
    @@all
  end

  def author_name
    if @author == nil  #  returns nil if the post does not have an author
      return nil
    else
      @author.name   #knows the name of its author
    end
  end
end
