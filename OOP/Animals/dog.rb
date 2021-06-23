require_relative 'mammal'

# solution 1
# class Dog < Mammal
#     def pet
#         @health -= 5
#     end
#     def walk
#         @health -= 1
#     end
#     def run
#         @health -= 10
#     end
# end

# dog1 = Dog.new("justine")
# dog1.display_health
# dog1.pet
# dog1.display_health
# dog1.run
# dog1.display_health

#Solution 2
class Dog < Mammal
    def pet
        @health -= 5
        self
    end
    def walk
        @health -= 1
        self
    end
    def run
        @health -= 10
        self
    end
end

dog1 = Dog.new("justine",150)
dog1.display_health.pet.pet.display_health

Dog.new("Abie",150).display_health.walk.walk.walk.run.run.pet.display_health
