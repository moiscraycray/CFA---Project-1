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

  #initialise our scoreboard array
  def initialize
    @scoreBoard = []
  end

  # main method for introduction and visual
  def begin
    a = Artii::Base.new(:font => 'slant')
    puts
    puts
    puts a.asciify('             Welcome!')
    puts
    puts a.asciify('           Trent or not!')
    puts
    puts "                       By\n\n"
    puts "          James, Carmen, Nathan, and Olivia\n\n\n\n"
    puts "            Hello , what is your  name?"

    # accepts input and makes a new player class object with their name
    # and a default score of 0.
    user = Player.new(gets.chomp, 0)
  end


# the player will choose which mode they want to play
  def mode

    # start a loop to get user input for Difficutly and to make sure its right
    loop do
    puts "Would you like to play on [easy], [medium], or [hard] mode?"
    @input = gets.chomp.downcase
    @choice = difficulty

    # save their input as
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


# class to handle our users, which tracks name and score. and can update and print their score.
# consider adding terminal-table for printing the leaderboard once we have running
class Player

  def initialize(name, score=0)
    @name = name
    @score = score
  end

  attr_accessor :name :score

  def tracker
      @score += 1
      @list << user.score
  end

  def score_board
    File.open("leaderboard", 'a+') {|f| f.write(@list) }
  end
=begin
    w - Create an empty file for writing.
    a - Append to a file.The file is created if it does not exist.
    r+ - Open a file for update both reading and writing. The file must exist.
    w+ - Create an empty file for both reading and writing.
    a+ - Open a file for reading and appending. The file is created if it does not exist.
=end

  end

end

# class to handle our images,
class Image_keeper

  def initialize
  end

  #Individual users will need to change the directory of where the images are stored
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

  # method to randomly select the arrays of pictures.
  # variables :  picture they are looking at = mainPic
  # first check what difficulty then select the two arrays and then 10 times randomly choose between each
  # run our answer checker program after each loop to track score.
  def randomise





    Catpix::print_image @mainPic,
      :limit_x => 0.7,
      :limit_y => 0.7,
      :center_x => true,
      :center_y => true,
      :bg => "white",
      :bg_fill => true

      print "Is it Trent?"

      # answer checking program to track their score.
      answer_checker
    end
  end

end

intro = Introduction.new
intro.begin
intro.mode

def answer_checker
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
