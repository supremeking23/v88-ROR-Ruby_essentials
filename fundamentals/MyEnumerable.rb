module MyEnumerable
    def my_each
      # your code here!
      puts self.length
      
      for i in 1..self.length
        yield i
      end
   
    end

    # def map(&block)
    #     result = []
    #     each do |element|
    #       result << block.call(element)
    #     end
    #     result
    # end


end
class Array
    include MyEnumerable
end

[1,2,3,4].my_each { |i| puts i } # => 1 2 3 4
[1,2,3,4].my_each {|i| puts i * 10  } # => 1 2 3 4
# [1,2,3,4].map { |i| puts i } # => 1 2 3 4
# [1,2,3,4].map { |i| puts i * 10 } # => 10 20 30 40
