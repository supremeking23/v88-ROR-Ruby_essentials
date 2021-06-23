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
    end

end

human1 = Human.new
human2 = Human.new


puts human1.class.ancestors

puts human1.health

human2.attack(human1)
puts human1.health