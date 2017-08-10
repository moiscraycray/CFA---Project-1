=begin

require 'artii'

a = Artii::Base.new(:font => 'slant')
puts a.asciify('Go kill yourself - Louis C.K. 2017')

=end

system("clear")

require 'artii' #This is one of the gems, ASCII text

=begin
The first class is the introduction to the program.
It will greet the user and welcome to the game.
=end
class Introduction

  def initialize
  end

  def begin
    a = Artii::Base.new(:font => 'slant')
    puts
    puts
    puts a.asciify('Welcome!')
    puts
    puts a.asciify('Trent or not!')
    puts
    puts "By\n\n"
    puts "James, Carmen, Nathan, and Olivia\n\n\n\n"
  end

end

class Scoring_keeper

  def initialize(score)
    @score = score
  end

  attr_accessor :score

  def tracker
    
    @score += 1
  end

end

class Image_keeper

  def feeds_image
  end

  def randomise
  end

end

puts "Is this Trent or not? [y/n]"
input = gets.chomp.downcase
score = Scoring_keeper.new(input)
