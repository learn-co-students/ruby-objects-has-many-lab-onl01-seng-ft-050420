class Post
    @@all = []
    attr_accessor :author , :title
    
    def initialize(name)
        @title = title
        save
        end
    def save
    @@all << self
    end
    def self.all
    @@all
    end
end
  