#use first_announce when the announcer first speaks in a sequence
def first_announce(string)
    return string.colorize(:magenta)
end

#use continue_announce only after a first_announce in sequence or after another continue_announce
def continue_announce(string)
    # sleep(2)
    return string.colorize(:magenta)
end

def random_move
    return rand(2)
end

#same = 10dmg, effective = 20dmg, ineffective = 5dmg
def scissors(opposition)
    case opposition
    when "scissors"
        dmg = 10
    when "paper"
        dmg = 20
    when "rock"
        dmg = 5
    end
    return dmg
end

def paper(opposition)
    case opposition
    when "scissors"
        dmg = 5
    when "paper"
        dmg = 10
    when "rock"
        dmg = 20
    end
    return dmg
end

def rock(opposition)
    case opposition
    when "scissors"
        dmg = 20
    when "paper"
        dmg = 5
    when "rock"
        dmg = 10
    end
    return dmg
end