class Mammal
    def breath  
        puts "Inhale and exhale"
    end

    def eat
        puts "Yum yum yum"
    end
end

class Human < Mammal # Human inherits from Mammal
    def subclass_method
        breath
    end
    def another_method
        # self.eat # gives you access to the current object
        # self would be Human
        eat
    end

    def eat 
        puts "ahahahah"
    end
end
person = Human.new
person.subclass_method
person.another_method
person.eat


#https://www.rubyguides.com/2020/04/self-in-ruby/


#It’s not a great idea to name a variable & a method the same. But if you have to work with that situation, then you’ll be able to call the method with self.method_name.