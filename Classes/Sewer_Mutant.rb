require_relative("./Enemy")

class Sewer_Mutant < Enemy
    def initialize
        super("Sewer Mutant", 25)
        sleep(2)
        puts "#{@name} comes crawling out of the floor! #{@name} has #{@health} health!"
        sleep(2)
        puts "Hey there! I'm #{@name}, and I sincerely hope that we may have a riveting duel today!".colorize(:green)
        sleep(2)
    end

    def attack(move, enemy_move, enemy)
        battlecries = ["The sewers will take control!", "The funky green mass will perplex you!", "It's slime time!", "Rust and waste to this place!"]
        super(move, enemy_move, enemy, battlecries[rand(battlecries.length)].colorize(:green))
    end
end