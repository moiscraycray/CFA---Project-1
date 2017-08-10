=begin

require 'artii'

a = Artii::Base.new(:font => 'slant')
puts a.asciify('Go kill yourself - Louis C.K. 2017')

=end

system("clear")

require 'artii' #This is one of the gems, ASCII text
<<<<<<< HEAD
=======
require 'catpix' #This gem prints out the pixelated image
>>>>>>> 03292d2dde5fa42c8bb92a0d61fde4d098fc95c5

=begin
The first class is the introduction to the program.
It will greet the user and welcome to the game.
=end
class Introduction

<<<<<<< HEAD
  def initialize
  end

=======
  def initialize(mode)
    @mode = mode
  end

  attr_accessor :mode

>>>>>>> 03292d2dde5fa42c8bb92a0d61fde4d098fc95c5
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

<<<<<<< HEAD
end

class Scoring_keeper
=======

# the player will choose which mode they want to play
  def mode

    puts "Would you like to play on [easy], [medium], or [hard] mode?"
    input = gets.chomp.downcase

    case @mode
      when "easy"

      when "medium"
        @random = @medium.sample
      when "hard"
        @random = @hard.sample
      else
        "Error, invalid input"
    end

  end

end

class Scoring_counter
>>>>>>> 03292d2dde5fa42c8bb92a0d61fde4d098fc95c5

  def initialize(score)
    @score = score
  end

  attr_accessor :score

  def tracker
<<<<<<< HEAD
    
=======

>>>>>>> 03292d2dde5fa42c8bb92a0d61fde4d098fc95c5
    @score += 1
  end

end

<<<<<<< HEAD
class Image_keeper

  def feeds_image
  end

  def randomise
=======
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

  def initialize(mode)
    @mode = mode
  end

#Inidividual users will need to change the directory of where the images are stored
  def feeds_image
    @easy_trent = ["//Users/oliviamo/sites/project1/trenteasy1small.jpg",
      "//Users/oliviamo/sites/project1/trenteasy2.jpg",
      "//Users/oliviamo/sites/project1/trenteasy10.jpg"
    ]
    @easy_not_trent = []
    @medium_trent = []
    @medium_not_trent = []
    @hard_trent = []
    @hard_not_trent = []
  end

  def randomise
    @random = @easy.sample
    @easy.delete(@random)

  end


    Catpix::print_image @random,
      :limit_x => 0.7,
      :limit_y => 0.7,
      :center_x => true,
      :center_y => true,
      :bg => "white",
      :bg_fill => true
>>>>>>> 03292d2dde5fa42c8bb92a0d61fde4d098fc95c5
  end

end

<<<<<<< HEAD
puts "Is this Trent or not? [y/n]"
input = gets.chomp.downcase
score = Scoring_keeper.new(input)
=======
intro = Introduction.new
intro.begin
intro.mode


puts "Is this Trent or not? [y/n]"
input = gets.chomp.downcase
score = Scoring_counter.new(input)
>>>>>>> 03292d2dde5fa42c8bb92a0d61fde4d098fc95c5
