class Player
    attr_accessor(:health)
    attr_reader(:name, :moves, :atk)

    def initialize(name, health)
        @name = name
        @health = health
        @moves = []
        @atk = 0
    end

    def attack(enemy)
        
    end
end