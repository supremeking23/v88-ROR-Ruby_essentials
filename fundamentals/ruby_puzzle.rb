#Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (e.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)

def problem_one(array)
    puts array.sum

    return array.filter { | element | element > 10}
end

#https://apidock.com/ruby/Array/filter
# filtering = problem_one([3,5,1,2,7,9,8,13,25,32])
# puts filtering

#Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
def problem_two(array)
    array.each {|person| puts person}

    return array.map {|person| "#{person} : #{person.length} characters long"}
end

# count_length = problem_two(["Ivan","Abie","Mikasa","Mavis","Lena","Vladelina"])
# puts count_length

#Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message.
def problem_three(array)
    array.shuffle! # after shuffling retain it
    puts "last letter #{array[-1]}"
    puts "first letter #{array[0]}"
    if ["a","e","i","o","u"].include? array[0]
        puts "The first letter '#{array[0]}' is vowel"
    end
end

# problem_three(["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"])

def problem_four

    arr = []
    10.times do 
        arr.push(rand(55..100))
    end
    puts arr
end

# problem_four

def problem_five

    arr = []
    10.times do 
        arr.push(rand(55..100))
    end
    puts "sorted #{arr.sort}"
    puts "minimum value #{arr.min}"
    puts "maximum value #{arr.max}"
end

# problem_five

def problem_six
    name =[]
    for i in 1..5
        name.push((65+rand(26)).chr)
    end

    name.join("")
end

def problem_seven
    names = []
    10.times do
        names.push(problem_six)
    end

    puts names
end

problem_seven