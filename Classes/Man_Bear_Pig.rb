require_relative("./Enemy")

class Man_Bear_Pig < Enemy
    def initialize
        super("Man Bear Pig", 75)
        sleep(2)
        puts "The Arena champion, #{@name} has finally emerged! #{@name} has #{@health} health!"
        sleep(2)
        puts "Hey hey it's me! The one and only #{@name}! Haha!! Let's duel, and have fun at the same time!".colorize(:yellow)
        sleep(2)
    end

    def attack(move, enemy_move, enemy)
        battlecries = ["I am Man Bear Pig!", "Half Man, Half Bear, Half Pig!", "Be it via hands, claws or trotters, I will emerge victorius!", "I am a South Park reference by the way!"]
        super(move, enemy_move, enemy, battlecries[rand(battlecries.length)].colorize(:yellow))
    end
end