def guess_number guess
    number = 35

    #METHOD 1
    # if number == guess
    #     return "You got it"
    # elsif guess > number
    #     return "Guess was too high!"
    # else
    #     return "Guess was too low" 
    # end

    #METHOD 2
    unless guess == number
        #return will be at the else block
        if guess > number
            return "Guess was too high!"
        else
            return "Guess was too low" 
        end
    else
        return "You got it"
    end

        


end


# puts guess_number 1

puts "Enter a number"
# make user enter a number
number = gets.chomp.to_f
puts guess_number number

