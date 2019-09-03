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
end

player = Player.new(ARGV[0].capitalize)
puts announce("Welcome to the arena, #{player.name}.")
puts announce("I am the announcer. I speak in purple.")