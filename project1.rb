=begin

require 'artii'

a = Artii::Base.new(:font => 'slant')
puts a.asciify('Go kill yourself - Louis C.K. 2017')

=end

system("clear")

require 'artii' #This is one of the gems, ASCII text
require 'catpix' #This gem prints out the pixelated image

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

class Scoring_counter

  def initialize(score)
    @score = score
  end

  attr_accessor :score

  def tracker

    @score += 1
  end

end

class Player

  def initialize(score)
    @score = score
  end

  def score_board
    File.open(leaderboard, 'w') {|f| f.write("write your stuff here") }

=begin
    w - Create an empty file for writing.

    a - Append to a file.The file is created if it does not exist.

    r+ - Open a file for update both reading and writing. The file must exist.

    w+ - Create an empty file for both reading and writing.

    a+ - Open a file for reading and appending. The file is created if it does not exist.
=end

  end

end

class Image_keeper

  def initialize
  end

  def feeds_image
    @easy = ["//Users/oliviamo/sites/project1/trenteasy1small.jpg", "string"]
  end

  def randomise
    Catpix::print_image @easy.sample,
      :limit_x => 0.7,
      :limit_y => 0.7,
      :center_x => true,
      :center_y => true,
      :bg => "white",
      :bg_fill => true
  end

end

intro = Introduction.new
intro.begin

puts "Is this Trent or not? [y/n]"
input = gets.chomp.downcase
score = Scoring_counter.new(input)
