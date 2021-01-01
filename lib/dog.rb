require "pry"
  class Dog

  @@all = [ ]

  attr_accessor :name

  def initialize(name)
    @name= name
    save
  end

  def self.all
    @@all
    binding.pry
  end

  def self.clear_all
    @@all= [ ]
    @@all
  end

  def self.print_all
    puts @@all


  end

  def save
    @@all << self
  end

end
