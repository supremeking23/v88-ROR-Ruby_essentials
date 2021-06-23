class Mammal
    attr_accessor :health, :name

    def initialize(name,health)
        @name = name
        @health = health
        self
    end

    def display_health
        puts "name: #{@name}, health: #{@health}"
        self
    end

end