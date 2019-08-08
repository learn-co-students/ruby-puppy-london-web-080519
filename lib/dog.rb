# Add your code here
require 'pry'

class Dog

    @@all = []

    attr_reader :name

    def initialize (name)
        self.save
        @name = name
    end

    def self.all
        @@all
    end

    def self.print_all
        @@all.each { |dog| puts dog.name}
    end

    def save
        @@all << self
    end

    def self.clear_all
        @@all.clear
    end

end
