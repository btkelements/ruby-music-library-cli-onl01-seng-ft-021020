class Artist
  attr_accessor :name, :songs

  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    self.all.clear
  end
  
  def save
    @@all << self
  end
  
  def add_song(song)
    song.artist = self unless song.artist
    songs.push song unless songs.include?(song)
  end
  
  def genres
    songs.map(&:genre).uniq
  end
  
  def self.create(artist)
    self.new(artist)
  end
end