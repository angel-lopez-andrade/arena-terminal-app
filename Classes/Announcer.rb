class Announcer
    #use first_announce when the announcer first speaks in a sequence
    def self.first_announce(string)
        return string.colorize(:magenta)
    end

    #use continue_announce only after a first_announce in sequence or after another continue_announce
    def self.continue_announce(string)
        sleep(2)
        return string.colorize(:magenta)
    end
end