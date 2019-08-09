# Add your code here
require "pry"
class Dog
  attr_accessor :names
  @@all = []

  def initialize (name)
    @name = name
    @save = save
  end 

  def self.all
    @@all
  end

  def name
    @name
  end 

  def self.clear_all
    @@all = []
  end

  def self.print_all
   @@all.each do |animal| 
    puts animal.name
   end
  end 

  def save
    @@all << self
  end
end