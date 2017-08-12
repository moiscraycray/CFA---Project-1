require 'catpix'

# class Player
#
#   def initialise (name, score=0)
#     @name = name
#     @score = score
#   end
#
#   attr_accessor :name , :score

  def randomise

    puts "set difficulty easy /medium / hard"
    @difficulty = gets.chomp
    @is_trent = true

    @easy_trent = [
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/easy/trenteasy1small.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/easy/trenteasy2.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/easy/trenteasy3.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/easy/trenteasy4.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/easy/trenteasy5.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/easy/trenteasy6.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/easy/trenteasy7.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/easy/trenteasy8.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/easy/trenteasy9.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/easy/trenteasy10.jpg")
    ]
    @easy_not_trent = [
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/easy/nteasy1.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/easy/nteasy2.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/easy/nteasy3.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/easy/nteasy4.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/easy/nteasy5.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/easy/nteasy6.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/easy/nteasy7.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/easy/nteasy8.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/easy/nteasy9.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/easy/nteasy10.jpg")
    ]
    @medium_trent = [
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/medium/trentmed1.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/medium/trentmed2.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/medium/trentmed3.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/medium/trentmed4.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/medium/trentmed5.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/medium/trentmed6.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/medium/trentmed7.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/medium/trentmed8.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/medium/trentmed9.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/medium/trentmed10.jpg")
    ]
    @medium_not_trent = [
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/medium/ntmed1.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/medium/ntmed2.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/medium/ntmed3.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/medium/ntmed4.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/medium/ntmed5.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/medium/ntmed6.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/medium/ntmed7.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/medium/ntmed8.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/medium/ntmed9.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/medium/ntmed10.jpg")
    ]
    @hard_trent = [
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/hard/trenthard1.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/hard/trenthard2.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/hard/trenthard3.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/hard/trenthard4.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/hard/trenthard5.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/hard/trenthard6.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/hard/trenthard7.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/hard/trenthard8.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/hard/trenthard9.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/trent/hard/trenthard10.jpg"),
    ]
    @hard_not_trent = [
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/hard/nthard1.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/hard/nthard2.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/hard/nthard3.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/hard/nthard4.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/hard/nthard5.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/hard/nthard7.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/hard/nthard8.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/hard/nthard9.jpg"),
      open(ENV['HOME']+"/sites/GroupAssignment/project1/not_trent/hard/nthard10.jpg")
    ]

    #
    # @easy_trent = [0,/1,3,4,5,6]
    # @easy_not_trent /= ["noteasy"]
    # @medium_trent = /["medium trent"]
    # @/medium_not_trent = [" med not trent"]
    # @hard_trent = ["/hard array trent"]
    # @hard_not_trent /= ["hard not trent/"]/


     2.times do
       # set variable /to see if it is trent to true or false.
      if rand(1..100) > 50
        @is_trent = true
      else
        @is_trent = false
      end

       #now update /which two sets of arrays to use

      case @difficulty
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


      Catpix::print_image mainPic,
        :limit_x => 0.7,
        :limit_y => 0.7,
        :center_x => true,
        :center_y => true,
        :bg => "white",
        :bg_fill => false

        puts "is it trent?"
        answer = gets.chomp

      end

  end
  # user = Player.new(gets.chomp, 0)
  # user.randomise

randomise
