require_relative "mammal"

class Lion < Mammal
    def fly
        @health -= 10
        self
    end

    def attack_town
        @health -=50
        self
    end

    def eat_humans
        @health += 20
        self
    end

    def display_health
        puts "This is a lion"
        super
        self
    end
end


Lion.new("Simba",170).attack_town.attack_town.attack_town.eat_humans.eat_humans.display_health