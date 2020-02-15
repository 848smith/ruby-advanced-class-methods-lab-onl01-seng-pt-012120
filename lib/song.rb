class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    @@all << song
    song.name = song
  end
  
  def self.new_by_name(title)
    song = self.new
    song.name = title
    song
  end
  
  def self.create_by_name(title)
    song = self.new
    song.name = title
    @@all << song
    song
  end
  
  def self.find_by_name(title)
    @@all.find.each do |song|
      song.name == title
    end
  end
  
  def self.find_or_create_by_name(title)
    if self.find_by_name(title)
      self.find_by_name(title)
    else
      create_by_name(title)
    end
  end
  
  def self.alphabetical
    @@all.sort {|song| song}
  end
end








