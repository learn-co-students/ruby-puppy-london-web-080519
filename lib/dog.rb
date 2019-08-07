# Add your code here

class Dog

    @@all = []

    def initialize(name)
        @name = name
        #@@all << self
        save
    end

    attr_reader :name

    def self.all
        @@all
    end

    def self.clear_all
        @@all = []
    end

    def self.print_all
        @@all.each do |item|
            puts item.name
        end
    end

    def save
        #initialize(self)
        @@all << self
    end
end