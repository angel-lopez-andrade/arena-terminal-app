class Player
    attr_accessor(:health)
    attr_reader(:name, :moves, :atk)

    def initialize(name)
        @name = name
        @health = 100
        @moves = ["scissors", "paper", "rock"]
        @atk = 0
    end

    def attack(move, enemy)
        
    end
end