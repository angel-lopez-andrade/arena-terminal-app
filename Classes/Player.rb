require_relative("../helper_methods")

class Player
    attr_accessor(:health)
    attr_reader(:name, :moves)

    def initialize(name)
        @name = name
        @health = 100
        @moves = ["scissors", "paper", "rock"]
        puts "#{@name} has entered the arena!"
    end

    def attack(move, enemy_move, enemy)
        dmg = send(move, enemy_move)
        enemy.health -= dmg
        puts "It's #{@name}'s #{move} VS #{enemy.name}'s #{enemy_move}!"
        sleep(1)
        puts "#{@name} attacks! #{enemy.name} takes #{dmg} dmg!"
        sleep(1)
        puts "#{enemy.name} is now on #{enemy.health} health."
        sleep(1)
    end
end