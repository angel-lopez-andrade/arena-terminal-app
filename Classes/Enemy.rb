class Enemy
    attr_accessor(:health)
    attr_reader(:name, :moves)

    def initialize(name, health)
        @name = name
        @health = health
        @moves = ["scissors", "paper", "rock"]
    end

    def attack(move, enemy_move, enemy, battlecry)
        dmg = send(move, enemy_move)
        enemy.health -= dmg
        puts "#{battlecry}"
        sleep(2)
        puts "It's #{@name}'s #{move} VS #{enemy.name}'s #{enemy_move}!"
        sleep(2)
        puts "#{enemy.name} takes #{dmg} damage!"
        sleep(2)
        puts "#{enemy.name} is now on #{enemy.health} health."
        sleep(2)
    end
end