require "colorize"
require_relative("./helper_methods")
require_relative("Classes/Announcer")
require_relative("Classes/Player")
require_relative("Classes/Sewer_Mutant")
require_relative("Classes/Ratking")
require_relative("Classes/Man_Bear_Pig")

begin
    if ARGV[0].length < 3 or ARGV[0].length > 9
        raise
    end
rescue
    puts "Name outside of length limit (minimum 3 and maximum 8)."
    puts "Default name set to \"Player1\""
    ARGV[0] = "Player1"
end
open("username_history.txt", "a") { |file|
    if ARGV[0] != "Player1"
        file << "#{ARGV[0]}\n"
    end
}
player = Player.new(ARGV[0].capitalize)
ARGV.clear
puts Announcer.first_announce("Welcome to the arena, #{player.name}.")
puts Announcer.continue_announce("I am the announcer. I speak in purple.")
puts Announcer.continue_announce("How are you doing today?")
gets.chomp
puts Announcer.first_announce("Hahaha! This announcer in fact has no concern for how you are actually doing!")
puts Announcer.continue_announce("I will explain to you the rules of this arena.")
puts Announcer.continue_announce("In the arena, you will fight with the principles of the children's game 'Scissors, Paper, Rock'.'")
puts Announcer.continue_announce("That is, Scissors beats Paper, Paper beats Rock, and Rock beats Scissors.")
puts Announcer.continue_announce("Exciting stuff isn't it?")
exciting = gets.chomp
while !exciting.downcase.include?("ye")
    puts Announcer.first_announce("What was that!? I didn't quite hear you!")
    puts Announcer.continue_announce("I shall ask once more! The thought of scissors, papers and rocks is quite exciting no?")
    exciting = gets.chomp
end
puts Announcer.first_announce("Of course it is!")
puts Announcer.continue_announce("However! Note that unlike the children's game, instead of binary 'wins' and 'losses', the arena has a move-effectiveness system in place.")
puts Announcer.continue_announce("If your move beats the opponents, it is considered 'effective' and performs 20 points of damage.")
puts Announcer.continue_announce("If your move is beaten by your opponents, it is 'ineffective' you only inflict a measly 5 damage.")
puts Announcer.continue_announce("Finally, if you pick the same move as your opponent, you simply deal 10 damage.")
puts Announcer.continue_announce("Your opponent also damages you by the same principles.")
puts Announcer.continue_announce("Note that only one person can attack and do damage per turn. The other simply picks a move to defend with.")
puts Announcer.continue_announce("If you're health drops to zero, its game over.")
puts Announcer.continue_announce("Now then, it's time to battle! You have 100 health and you're first opponent is crowd favorite, Sewer Mutant!")
sewer_mutant = Sewer_Mutant.new
player_turn = true
while player.health > 0 and sewer_mutant.health > 0
    if player_turn == true
        puts "Your turn!"
        puts "Input a move! Scissors, Paper or Rock!?"
        move = gets.chomp.downcase
        if(move != "scissors" and move!= "paper" and move!= "rock")
            puts "Wrong input! Scissors, Paper or Rock!?"
            next
        end
        player.attack(move, sewer_mutant.moves[rand(2)], sewer_mutant)
        if sewer_mutant.health <= 0
            puts "#{sewer_mutant.name}'s health is zero or below! #{player.name} wins!"
            sleep(2)
            break
        end
        player_turn = false
    else
        puts "Enemy turn!"
        puts "Input a move! Scissors, Paper or Rock!?"
        move = gets.chomp.downcase
        if(move != "scissors" and move!= "paper" and move!= "rock")
            puts "Wrong input! Scissors, Paper or Rock!?"
            next
        end
        sewer_mutant.attack(sewer_mutant.moves[rand(2)], move, player)
        if player.health <=0
            puts "#{player.name}'s health is zero or below! #{sewer_mutant.name} wins!"
            puts "Game over!"
            puts "Exiting application..."
            exit
        end
        player_turn = true
    end
end
puts Announcer.first_announce("Congratulations on defeating the first opponent! I've restored your health back to 100!")
player.health = 100
puts Announcer.continue_announce("Next up is the underworld cheese lord, Ratking!")
ratking = Ratking.new
player_turn = true
while player.health > 0 and ratking.health > 0
    if player_turn == true
        puts "Your turn!"
        puts "Input a move! Scissors, Paper or Rock!?"
        move = gets.chomp.downcase
        if(move != "scissors" and move!= "paper" and move!= "rock")
            puts "Wrong input! Scissors, Paper or Rock!?"
            next
        end
        player.attack(move, ratking.moves[rand(2)], ratking)
        if ratking.health <= 0
            puts "#{ratking.name}'s health is zero or below! #{player.name} wins!"
            sleep(2)
            break
        end
        player_turn = false
    else
        puts "Enemy turn!"
        puts "Input a move! Scissors, Paper or Rock!?"
        move = gets.chomp.downcase
        if(move != "scissors" and move!= "paper" and move!= "rock")
            puts "Wrong input! Scissors, Paper or Rock!?"
            next
        end
        ratking.attack(ratking.moves[rand(2)], move, player)
        if player.health <=0
            puts "#{player.name}'s health is zero or below! #{ratking.name} wins!"
            puts "Game over!"
            puts "Exiting application..."
            exit
        end
        player_turn = true
    end
end
puts Announcer.first_announce("Congratulations on defeating the second opponent! I've restored your health back to 100!")
player.health = 100
puts Announcer.continue_announce("Finally, you're up against the arena champion Man Bear Pig!!!")
man_bear_pig = Man_Bear_Pig.new
player_turn = true
while player.health > 0 and man_bear_pig.health > 0
    if player_turn == true
        puts "Your turn!"
        puts "Input a move! Scissors, Paper or Rock!?"
        move = gets.chomp.downcase
        if(move != "scissors" and move!= "paper" and move!= "rock")
            puts "Wrong input! Scissors, Paper or Rock!?"
            next
        end
        player.attack(move, man_bear_pig.moves[rand(2)], man_bear_pig)
        if man_bear_pig.health <= 0
            puts "#{man_bear_pig.name}'s health is zero or below! #{player.name} wins!"
            sleep(2)
            break
        end
        player_turn = false
    else
        puts "Enemy turn!"
        puts "Input a move! Scissors, Paper or Rock!?"
        move = gets.chomp.downcase
        if(move != "scissors" and move!= "paper" and move!= "rock")
            puts "Wrong input! Scissors, Paper or Rock!?"
            next
        end
        man_bear_pig.attack(man_bear_pig.moves[rand(2)], move, player)
        if player.health <=0
            puts "#{player.name}'s health is zero or below! #{man_bear_pig.name} wins!"
            puts "Game over!"
            puts "Exiting application..."
            exit
        end
        player_turn = true
    end
end
puts Announcer.first_announce("#{player.name} has come out victorious in the arena circuit! Hip Hip Hooray!")
sleep(2)
puts "Exiting application..."
sleep(2)
exit