# .include?(value) => true or false
# .last => returns the last object in range
# .max => returns the maximum value in range
# .min => returns the minimum value in range

array1 = [1,2,3,4,5,6,7,8,9,10]
array2 = ["ivan","mikaela","mavis","nobara","abie","pau","gray"]

puts "using include?"
puts array2.include?("abie")
puts array2.include?("gildart")

puts "\nusing last"
puts array1.last
puts array2.last

#alphabetical pag string
puts "\nusing max"
puts array1.max
puts array2.max

#alphabetical pag string
puts "\nusing min"
puts array1.min
puts array2.min