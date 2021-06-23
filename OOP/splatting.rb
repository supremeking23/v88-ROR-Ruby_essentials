
def splatting(*params)
    sum = 0
    new_array = []
    for i in params
       if i.kind_of? (Array)
        new_array.concat(i)
       else
        sum += i
       end
    end

    puts new_array.sum
    return sum +  new_array.sum
  
end



# puts splatting(1,2,3,4,5,6).inspect

puts splatting(1,2,3,4,5,6,[1,2],[1,2],[1,2,3,4,5,6])
# puts splatting(1,2,3,4,5,6)

# s = [1,223,4,5,6,7]

# puts s.kind_of? (Array)[3, 5, 7, 8], [2, 4.3, 1.25]


