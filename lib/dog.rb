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
    array_all=[ ]
    @@all.each do |i|
      array_all << "#{i}"
    end

    binding.pry
  end

  def self.clear_all
    @@all.clear
  end

  def self.print_all
    puts @@all
  end

  def save
    @@all << self
  end

end
