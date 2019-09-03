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
        sleep(2)
        puts "#{@name} attacks! #{enemy.name} takes #{dmg} dmg!"
        sleep(2)
        puts "#{enemy.name} is now on #{enemy.health} health."
        sleep(2)
    end
end

# def scissors
#     return 5
# end

# def attack(move, enemy)
#     dmg = send(move)
#     enemy -= dmg
# end

# string move #send should be called transform
# send(move) => method call

# attack("scissors", 10)

# #send syntax
# send(method_name, method_arg1, method_arg2)
# where method_name can be either a symbol or a string