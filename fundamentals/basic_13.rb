
def problem_one
    yield
    puts (1..255).to_a { i } # => [3, 6, 9]
   
end

def problem_two
    yield
    # puts [1..255].select { |num| num.even? } 
    puts (1..255).to_a.select { |num| num.odd? } # => [3, 6, 9]
   
end

def problem_three
    yield
    # puts [1..255].select { |num| num.even? } 
    sum = 0
    for i in 0..255
        sum += i
        puts "New number #{i}; Sum: #{sum}"
    end
end

def problem_four(array)
    yield
    for element in array
        puts element
    end
    
end

def problem_five(array)
    yield
   puts array.max
   
end

def problem_six(array)
    yield
    
    #method 1
    # average = 0
    # sum = 0
    # for element in array
    #     sum += element
    # end
    # puts sum / array.length
    
    #method 2
    puts array.sum / array.length
end

def problem_seven(array)
    yield
    
    y = []
    for element in array.to_a
       unless element.even?
        y.push(element)
       end
    end

    puts y
   
end

def problem_eight(array,y)
    yield
    puts array.count { |element| element > y }
   
end

def problem_nine(array)
    #Square the values
     array.each { |element| puts element * element }
end

def problem_ten(array)

    puts array.map { | element | element < 0 ? 0 : element}
end

def problem_eleven(array)
    yield
    return {
        :max =>array.max,
        :min =>array.min,
        :average => array.sum / array.length
    }
end

def problem_twelve(array)
    array.shift
    puts array.insert(-1,0)

end

def problem_thirteen(array)
    puts array.map { | element | element < 0 ? "Dojo" : element}
end


# problem_one { puts "Problem One: Print 1-255 \n"}
# problem_two { puts "Problem Two: Print odd numbers between 1-255 \n"}
# problem_three { puts "Problem Three: Print Sum \n"}
# problem_four([1,3,5,7,9,13]) { puts "Problem Four: Iterating through an array \n"}
# problem_five([1,3,5,7,9,13]) { puts "Problem Five: Find Max \n"}
# problem_five([-3, -5, -7]) { puts "Problem Five: Find Max \n"}
# problem_five([-3, -5, -7,0,1,2,3,-10,100,-1001]) { puts "Problem Five: Find Max \n"}
# problem_six([2,10,3]) { puts "Problem Six: Get average \n"}
# problem_six([77,88,91,93,98]) { puts "Problem Six: Get average \n"}
# problem_seven((1..255)) { puts "Problem Seven:Array with Odd Numbers \n"}
# problem_eight([1,3,5,7],3) { puts "Problem Eight:Greater Than Y \n"}
# problem_nine([1, 5, 10, -2]) { puts "Problem Nine:Square the values \n"}
# problem_ten([1, 5, 10, -2]) { puts "Problem Ten:Elimate negative number\n"}
# problem_ten([1, 5,-222,-12,12,-2,-1,-55 ,10, -2]) { puts "Problem Ten:Elimate negative number\n"}
# ele = problem_eleven([88,87,99,98,78,97,96,89]) { puts "Problem Eleven:Max, Min, and Average\n"}
# puts "min:#{ele[:min]} \nmax:#{ele[:max]} \naverage: #{ele[:average]}"


problem_thirteen([-1, -3, 2]) { puts "Problem Thirteen: Number to String \n"}
problem_thirteen([-1, -3, -2,23,1,4,6,-12]) { puts "Problem Thirteen: Number to String \n"}
problem_thirteen([-1, -3, -2,-12]) { puts "Problem Thirteen: Number to String \n"}