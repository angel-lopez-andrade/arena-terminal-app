require "colorize"
require_relative("./methods")

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
end

player_name = ARGV[0].capitalize
puts announce("Welcome to the arena, #{player_name}.")
puts announce("I am the announcer. I speak in purple.")