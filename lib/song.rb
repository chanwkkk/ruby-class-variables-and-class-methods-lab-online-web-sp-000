
require 'pry'
class Song
  attr_accessor :name, :genre, :artist
  @@count=0
  @@artists=[]
  @@genres=[]


  def initialize(name,artist,genre)
    @name=name
    @genre=genre
    @artist=artist
    @@count+=1
    @@artists<<artist
    @@genres<<genre
  end

  def self.count
    @@count
  end

  def self.artists
    artist_list=[]
    @@artists.each do |artist|
      if artist_list.include?(artist)
      else artist_list<<artist
      end
    end
    artist_list
  end

  def self.genres
    genres_list=[]
    @@genres.each do |genre|
      if genres_list.include?(genre)
      else genres_list<<genre
      end
    end
    genres_list
  end

  def self.genre_count
    genres_count={}
    @@genres.each do |genre|
      genres_count[genre]||=0
      genres_count[genre]+1
    end
    binding.pry
    genres_count

  end
end
