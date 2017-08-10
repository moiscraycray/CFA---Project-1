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
    puts user.name
  end


# the player will choose which mode they want to play
  def mode

    # start a loop to get user input for Difficutly and to make sure its right
    loop do
    puts "Would you like to play on [easy], [medium], or [hard] mode?"
    @input = gets.chomp.downcase


    # save their input as
    case @input
    when "easy", "e"
        @difficulty = "easy"
        break
      when "medium", "m"
        @difficulty = "medium"
      when "hard" , "h"
        @difficulty = "hard"
      else
        "Error, invalid input, please choose Easy, Medium or Hard"
    end

  end

  image_runner = Image_keeper.new
  image_runner.randomise(@difficulty)

end


# class to handle our users, which tracks name and score. and can update and print their score.
# consider adding terminal-table for printing the leaderboard once we have running
class Player

  def initialize(name, score=0)
    @name = name
    @score = score
  end

  attr_accessor :name, :score

  def tracker
      @score += 1
      @list << user.score
  end

  def score_board
    File.open("leaderboard", 'a+') {|f| f.write(@list) }
  end

  def wrong
    puts "Wrong"

  end
=begin
    w - Create an empty file for writing.
    a - Append to a file.The file is created if it does not exist.
    r+ - Open a file for update both reading and writing. The file must exist.
    w+ - Create an empty file for both reading and writing.
    a+ - Open a file for reading and appending. The file is created if it does not exist.
=end

end

# class to handle our images,
class Image_keeper

  def initialize
  end

  #Individual users will need to change the directory of where the images are stored
  def keep_files
    @easy_trent = [
      open(ENV['HOME']+"/sites/project1/trent/easy/trenteasy1small.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trenteasy2.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easytrenteasy3.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easytrenteasy4.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easytrenteasy5.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easytrenteasy6.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easytrenteasy7.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easytrenteasy8.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easytrenteasy9.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trenteasy10.jpg")
    ]
    @easy_not_trent = [
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy1.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy2.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy3.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy4.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy5.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy6.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy7.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy8.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy9.jpg"),
      open(ENV['HOME']+"/sites/project1/not_trent/easy/nteasy10.jpg"),
    ]

    @medium_trent = [
      open(ENV['HOME']+"/sites/project1/trent/easy/trentmed1.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trentmed2.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trentmed3.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trentmed4.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trentmed5.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trentmed6.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trentmed7.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trentmed8.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trentmed9.jpg"),
      open(ENV['HOME']+"/sites/project1/trent/easy/trentmed10.jpg")
    ]
    @medium_not_trent = []

    @hard_trent = []
    @hard_not_trent = []
  end

  # method to randomly select the arrays of pictures.
  # variables :  picture they are looking at = mainPic
  # first check what difficulty then select the two arrays and then 10 times randomly choose between each
  # run our answer checker program after each loop to track score.
  def randomise(difficulty)

    10.times do
       # set variable to see if it is trent to true or false.
      if rand(1..100) > 50
        @is_trent = true
      else
        @is_trent = false
      end

       #now update which two sets of arrays to use.
      case difficulty
      when "easy"
        if @is_trent == true
          mainPic = @easy_trent.sample
        else
          mainPic = @easy_not_trent.sample
        end

      when "medium"
        if @is_trent == true
          mainPic = @medium_trent.sample
        else
            mainPic = @medium_not_trent.sample
        end

      when "hard"
        if @is_trent == true
          mainPic = @hard_trent.sample
        else
            mainPic = @hard_not_trent.sample
        end
      end

      # this section prints to screen using our mainPic , chosen above
      # and our amazing catpix gem... grr

      Catpix::print_image mainPic,
        :limit_x => 0.7,
        :limit_y => 0.7,
        :center_x => true,
        :center_y => true,
        :bg => "white",
        :bg_fill => true

        print "Is it Trent?"

        # answer checking program to track their score.
        # answer_checker

    end
  end

end


end
intro = Introduction.new
intro.begin
intro.mode


# def answer_checker
#   puts "Is this Trent or not? [y/n]"
#   isTrentAnswer = gets.chomp.downcase
#   case isTrentAnswer
#   when  "yes" && @is_trent?
#     user.tracker
#   when  "no" && !@is_trent?
#     user.tracker
#   when "no" && @is_trent?
#     user.wrong
#   when "yes" && !@is_trent?
#     user.wrong
#   end
