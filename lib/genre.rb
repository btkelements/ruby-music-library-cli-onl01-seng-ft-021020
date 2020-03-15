class Genre
  
  attr_accessor :name, :songs
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artists
    songs.map(&:artist).uniq
  end
  
  def self.destroy_all
    self.all.clear
  end
  
  def self.create(genre)
    self.new(name)
  end

  
end