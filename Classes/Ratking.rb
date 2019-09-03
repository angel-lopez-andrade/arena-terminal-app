require_relative("./Enemy")

class Ratking < Enemy
    def initialize
        super("Ratking", 55)
        sleep(2)
        puts "The devious underlord, #{@name} has come to battle! #{@name} has #{@health} health!"
        sleep(2)
        puts "I'd like to give a shout out to all my longtime #{@name} Circle fans! Keep on swarming and follow my arena channel!".colorize(:red)
        sleep(2)
    end

    def attack(move, enemy_move, enemy)
        battlecries = ["The Ratking demands tribute!", "Come into the fangs of the underworld!", "I am pleased by cheese!", "My rats will ravage!"]
        super(move, enemy_move, enemy, battlecries[rand(battlecries.length)].colorize(:red))
    end
end