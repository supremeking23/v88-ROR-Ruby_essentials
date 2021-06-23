#https://stackoverflow.com/questions/7179016/what-is-the-purpose-of-and-at-the-end-of-method-names
array1 = [1,2,3,4,5,6,7,8,9,10]
array2 = ["ivan","mikaela","mavis","nobara","abie","pau","gray"]

#at - Returns the element at index. A negative index counts from the end of self. Returns nil if the index is out of range. See also #[].
#https://ruby-doc.org/core-2.7.3/Array.html#method-i-at
puts "at method"
puts array1.at(4)
puts array2.at(4)

#fetch - Tries to return the element at position index, but throws an IndexError exception if the referenced index lies outside of the array bounds. This error can be prevented by supplying a second argument, which will act as a default value.
#Alternatively, if a block is given it will only be executed when an invalid index is referenced.
#Negative values of index count from the end of the array.

puts "\nfetch method"
puts array1.fetch(4)
puts array2.fetch(4)
puts array2.fetch(7,"erza")
array1.fetch(4) {|i| puts "#{i} is out of bounds"} #Alternatively, if a block is given it will only be executed when an invalid index is referenced.


#reverse - Returns a new array containing self‘s elements in reverse order.
#https://www.google.com/search?q=reverse+vs+reverse!+in+ruby&rlz=1C1CHBD_enPH920PH920&oq=reverse+vs+reverse!+in+ruby&aqs=chrome..69i57.7984j0j7&sourceid=chrome&ie=UTF-8
puts "\nreverse method"
puts "array1"
puts array1
puts "array1 reverse"
# puts array1.reverse!
puts "balik sa array1"
puts array1
puts array1.reverse
puts array2.reverse


#length - Returns the number of elements in self. May be zero.
puts "\nlength method"
puts array1.length
puts array2.length


#sort Returns a new array created by sorting self.
#https://ruby-doc.org/core-2.7.3/Array.html#method-i-sort
puts "\nsort method"
puts array1.sort
puts array2.sort

#slice - Returns the element at index, or returns a subarray starting at the start index and continuing for length elements, or returns a subarray specified by range of indices.
puts "\nslice method"
# puts array2.slice(0)
# puts array2.slice(1,4)
puts array2.slice(1..-1)


#shuffle - Returns a new array with elements of self shuffled.
#https://ruby-doc.org/core-2.7.3/Array.html#method-i-shuffle
puts "\nshuffle method"
puts array1.shuffle
puts array2.shuffle
puts array1.shuffle(random:Random.new(2)) #for constant shuffle


#join - Returns a string created by converting each element of the array to a string, separated by the given separator. If the separator is nil, it uses current $,. If both the separator and $, are nil, it uses an empty string.
#https://ruby-doc.org/core-2.7.3/Array.html#method-i-join
puts "\njoin method"
puts array1.join(",")
puts array2.join(" ~ ")


#insert - Inserts the given values before the element with the given index.
#https://ruby-doc.org/core-2.7.3/Array.html#method-i-insert
puts "\ninsert method"
puts array1.insert(-1,100)
puts array1.insert(2,200)
puts array2.insert(2,"zera")

#values_at - Returns an array containing the elements in self corresponding to the given selector(s).
#https://ruby-doc.org/core-2.7.3/Array.html#method-i-values_at
array3 = %w{101 102 103 104 105 106 107 108 109 110}
puts "\nvalues_at method"
puts array3.values_at(0,2)
puts array3.values_at(0,2,5,5..8)

