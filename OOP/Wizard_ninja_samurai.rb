class Human
    attr_accessor :strength, :intelligence, :stealth, :health
    def initialize
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end

    def attack(person)
        # check if the attacked object's class is Human or inherits from the Human class
        if person.class.ancestors.include?(Human)
            person.health = person.health -  @strength
            # remember that we don't need to write "return" in ruby
            # stating true below will automatically return the boolean true
            true
        else
            false
        end
        self
    end



end

class Wizard < Human
    def initialize
        @health = 50
        @intelligence = 25
    end
    
    def heal
        self.health += 10
    end

    def fireball(person)
        person.health -= 20
    end


end

class Ninja < Human
    def initialize
        super
        @stealth = 175
       
    end

    def stealth_attack(person)
        self.health += 10
        attack(person)
    end

    def get_away
        self.health -= 15
    end
    
end

class Samurai < Human
    # class variable
    @@samurai_count = 0
   
    def initialize
        @health = 200
        @@samurai_count += 1
    end

    def death_blow(person)
        person.health = 0
    end

    def meditate
        @health = 200
    end

    def self.how_many
       puts @@samurai_count
    end

    
end

wizard1 = Wizard.new
samurai1 = Samurai.new
samurai2 = Samurai.new
samurai3 = Samurai.new
ninja1 = Ninja.new


# puts "Start game"
# puts "samurai's hp: #{samurai1.health}"
# puts "wizard's hp: #{wizard1.health}"
# puts "ninja's hp: #{ninja1.health}"

# ninja1.stealth_attack(samurai1)
# puts "samurai's hp: #{samurai1.health}"
# puts "ninja's hp: #{ninja1.health}"
# ninja1.get_away
# puts "ninja's hp: #{ninja1.health}"



# wizard1.attack(ninja1).attack(ninja1).attack(ninja1).attack(ninja1).attack(ninja1)
# wizard1.heal
# puts "samurai's hp: #{samurai1.health}"
# puts "wizard's hp: #{wizard1.health}"
# puts "ninja's hp: #{ninja1.health}"
# wizard1.fireball(samurai1)


# puts "samurai's hp: #{samurai1.health}"
# ninja1.stealth_attack(samurai1)
# puts "samurai's hp: #{samurai1.health}"

puts "wizard's hp: #{wizard1.health}"
samurai1.death_blow(wizard1)
puts "wizard's hp: #{wizard1.health}"

# ninja3.how_many
Samurai.how_many