class Song
@@all = []
attr_accessor :genre, :name, :artist

def initialize(name)
@name = name
save
end

def save
@@all << self
end


def self.all
    @@all
end

end