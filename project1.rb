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

  attr_accessor

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
    puts " Hello , what is your  name?"
    user = Player.new(gets.chomp, 0)
  end


# the player will choose which mode they want to play
  def mode

    loop do
    puts "Would you like to play on [easy], [medium], or [hard] mode?"
    @input = gets.chomp.downcase
    @choice = Image_keeper.new

    case @input
    when "easy", "e"
        difficulty = easy
        break
      when "medium", "m"
        difficulty = medium
      when "hard" , "h"
        difficulty = hard
      else
        "Error, invalid input, please choose Easy, Medium or Hard"
    end

  end

end



class Player

  def initialize(name, score=0)
    @name = name
    @score = score
  end

  attr_accessor :name :score

  def tracker
      @score += 1
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
  def keep_files
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
    @picture = @easy.sample
    @easy.delete(@random)
    @is_trent = true

  end


  10.times do
    vrandom = random(1..2)
    if vrandom = 1
      @picture = easy_trent
    else
      @picture = easy_not_trent
    end

    Catpix::print_image @picture,
      :limit_x => 0.7,
      :limit_y => 0.7,
      :center_x => true,
      :center_y => true,
      :bg => "white",
      :bg_fill => true

      trent_or_not
    end
  end

end

intro = Introduction.new
intro.begin
intro.mode

def trent_or_not
  puts "Is this Trent or not? [y/n]"
  isTrentAnswer = gets.chomp.downcase
  case isTrentAnswer
  when  "yes" && @is_trent?
    user.tracker
  when  "no" && !@is_trent?
    user.tracker
  when "no" && @is_trent?
    user.wrong
  when "yes" && !@is_trent?
    user.wrong
  end
