# Add your code here

class Dog
    attr_accessor :name
    #store each instance of Dog

    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        #Array#clear
        @@all.clear()
    end

    def self.print_all
       # puts @@all
        @@all.each do |puppy|
            puts puppy.name
        end
    end

    def save
        #adds this instance to the @@all array when called
        @@all << self
        #gets called inside initialize when a new Dog is created
    end
end