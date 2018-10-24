require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
<<<<<<< HEAD
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods
=======
  include Paramble::InstanceMethods
>>>>>>> b5dbcd2a78d240591eae70a09a81c06a2142c437

  @@songs = []

  def initialize
    self.class.all << self
  end

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
