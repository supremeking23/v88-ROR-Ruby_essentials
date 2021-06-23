class Mammal
    def breath  
        puts "Inhale and exhale"
    end

    def calling_speak
        speak
    end

    protected
        def speak
            puts "I am protected method"
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
        self.eat # gives you access to the current object
        # self would be Human
    end

    def eat 
        puts "ahahahah"
    end

    def explicitly_speak
        self.speak
    end
      
    def implicitily_speak
        speak
    end
end
# person = Human.new
# person.subclass_method
# person.another_method
# person.eat

mammal = Mammal.new
# mammal.speak # => protected method `speak' called for #<Mammal:0x007fa5438183d8> (NoMethodError)
mammal.calling_speak # => I am a protected method
person = Human.new
person.speak # => protected method `speak' called for #<Human:0x007fedfe824710> (NoMethodError)
person.explicitly_speak # => I am a protected method
person.implicitily_speak # => I am a protected method