
require "pry"

class Dog 
    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name
        # @@all << self
        self.save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        Dog.all.select { | dog | puts dog.name}
    end

    def save
        @@all << self
    end

end
