require "colorize"
require_relative("./helper_methods")
require_relative("Classes/Player")

#terminal argument checker
if ARGV.length != 1
    puts "Wrong number of arguments."
    puts "Exactly one argument - player name, required at runtime."
    puts "Exiting application."
    exit
elsif ARGV[0].length < 3 or ARGV[0].length > 9
    puts "Player name too long or too short."
    puts "Please input a name between 3 and 8 characters"
    puts "Exiting application."
    exit
end
player = Player.new(ARGV[0].capitalize)
ARGV.clear
puts first_announce("Welcome to the arena, #{player.name}.")
puts continue_announce("I am the announcer. I speak in purple.")
puts continue_announce("How are you doing today?")
gets.chomp
puts first_announce("Hahaha! This announcer in fact has no concern for how you are actually doing!")
puts continue_announce("I will explain to you the rules of this arena.")
puts continue_announce("In the arena, you will fight with the principles of the children's game 'Scissors, Paper, Rock'.'")
puts continue_announce("That is, Scissors beats Paper, Paper beats Rock, and Rock beats Scissors.")
puts continue_announce("Exciting stuff isn't it?")
exciting = gets.chomp
while !exciting.downcase.include?("ye")
    puts first_announce("What was that!? I didn't quite hear you!")
    puts continue_announce("I shall ask once more! The thought of scissors, papers and rocks is quite exciting no?")
    exciting = gets.chomp
end
puts first_announce("Of course it is!")
puts continue_announce("However! Note that unlike the children's game, instead of binary 'wins' and 'losses', the arena has a move-effectiveness system in place.")
puts continue_announce("If your move beats the opponents, it is considered 'effective' and performs 20 points of damage.")
puts continue_announce("If your move is beaten by your opponents, it is 'ineffective' you only inflict a measly 5 damage.")
puts continue_announce("Finally, if you pick the same move as your opponent, you simply deal 10 damage.")