require 'terminal-table'



class Player

  def initialize(name, score=0)
    @name = name
    @score = score
  end

  attr_accessor :name, :score

end

puts " : type"
user = Player.new(gets.chomp.downcase)

# scoreboard = {"James" => 1, "Olivia" => 5, "Carmen" => 4, "nathan" => 3}
#
# scoreboard << user.name
#
# File.open("shoppingList.txt", "w+" ) {|f| f.puts(scoreboard)}
puts @name

if File.read("/Users/Titan/sites/project1/ScoreBoard.txt").include?(@name)
  puts "true"
else
  puts "False"
end
