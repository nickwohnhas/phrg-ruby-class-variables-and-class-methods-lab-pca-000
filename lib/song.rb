require 'pry'
class Song
  attr_accessor :name, :artist, :genre
@@count = 0
@@genres = []
@@artists = []

  def initialize(name,artist,genre)
  @@count += 1
  @genre = genre
  @@genres << @genre
  @name = name
  @artist = artist
  @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    new_hash = Hash.new(0)
    @@genres.each do |genres|
      new_hash[genres] += 1
    end
    new_hash
  end

  def self.artist_count
    new_hash = Hash.new(0)
    @@artists.each do |artists|
      new_hash[artists] += 1
    end
    new_hash
  end

end
