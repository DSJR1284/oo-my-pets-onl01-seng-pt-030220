require "pry"

class Owner

  attr_accessor
  attr_reader :name, :species

  @@owner =[]

  def initialize(name)
    @name = name
    @species = species
    @@owner << self
  end

    def species
      @species = "human"
    end

    def say_species
      "I am a #{species}."
    end

    def self.all
      @@owner
    end

    def self.count
      @@owner.count
    end

    def self.reset_all
      @@owner.clear
    end

    def cats
      Cat.all.select {|my_cats| my_cats.owner == self}
    end

    def dogs
      Dog.all.select {|my_dogs| my_dogs.owner == self}
    end

    def buy_cat(name)
     cat = Cat.new(name, self)

    end

    def buy_dog(name)
       dog = Dog.new(name, self)
    end

    def walk_dogs
      Dog.all.each {|dog| dog.mood = "happy"}
    end

    def feed_cats
      Cat.all.each {|cat| cat.mood = "happy"}
    end

    def sell_pets
    pets = (self.dogs) + (self.cats)
    pets.each {|pet| pet.mood ="nervous"
    pet.owner = nil}
    end

    def list_pets
      puts "I have #{self.dog.size} dog(s), and #{self.cat.size}. cat(s)."
        binding.pry
    end


end
