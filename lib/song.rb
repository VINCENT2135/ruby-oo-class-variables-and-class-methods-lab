require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
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
    count = {}
    @@genres.each do |item|
      if count[item] 
        count[item] += 1
      else 
        count[item] = 1
      end
    end
    count
  end

  def self.artist_count
    count = {}
    @@artists.each do |item|
      if count[item]
        count[item] += 1
      else
        count[item] = 1
      end
    end
    count
  end
end