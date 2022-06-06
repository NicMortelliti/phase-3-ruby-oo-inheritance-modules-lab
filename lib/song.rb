require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  extend Memorable::ClassMethods
  extend Findable
  include Memorable::InstanceMethods
  include Paramable

  @@songs = []

  # Initialize handled in lib/concers/memorable.rb

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
