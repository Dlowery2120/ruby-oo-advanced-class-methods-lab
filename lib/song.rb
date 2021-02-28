require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def initialize (name, artist_name)
    @name = name
    @artist_name = artist_name
    @@all << self
  end
  def self.create
    puts "created song"
  end
  def self.all
    @@all  
  end

  def save
    self.class.all << self
  end

end

song = Song.create
Song.all.include?(song)
# song = Song.new_by_name("The Middle")
# song.name


binding.pry 
0