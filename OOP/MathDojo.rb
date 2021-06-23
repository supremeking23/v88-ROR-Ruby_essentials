class MathDojo
   
    def initialize
        self
        @result = 0
       
    end


    def add(*num)
        new_array = []
        for i in num
            if  i.kind_of? (Array)
                new_array.concat(i)
            else
                new_array.push(i)
            end
        end
        @result += new_array.sum
        self
    end

    def subtract(*num)

        new_array = []
        for i in num
            if  i.kind_of? (Array)
                new_array.concat(i)
            else
                new_array.push(i)
            end
        end
       
        for i in new_array
            @result -= i
        end
        self
    end

    def result

       
        puts @result
        self
    end
end

challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
 challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15

# challenge1 =  MathDojo.new.add(2).add(2, 5).subtract(3, 2).result

# challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15

testing1 =  MathDojo.new.add(4,[1,2],5).add(2, 5,[3,3]).result