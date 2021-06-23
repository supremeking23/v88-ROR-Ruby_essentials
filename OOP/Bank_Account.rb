class BankAccount
    
    # attr_accessor :account_number,:savings_account_balance,:checking_account_balance, :number_of_account, :interest_rate

    attr_reader :account_number,:savings_account_balance,:checking_account_balance, :number_of_account, :interest_rate

    #class variable
    @@number_of_account = 0
    def initialize
        # puts self.generate_account_number
        @account_number = self.generate_account_number
        @savings_account_balance = 0
        @checking_account_balance = 0

        # as soon as a new object has been created 2 account will be added to number of account
        @@number_of_account += 2
        # @interest_rate = interest
    end

    def self.test
        return  @@number_of_account
    end

    def savings_account
        return @savings_account_balance
    end

    def checking_account
        return @checking_account_balance
    end

    def display_total_amount
        # puts @savings_account_balance + @checking_account_balance
        return @savings_account_balance + @checking_account_balance
    end

    def deposit(deposit_to,amount)
        if deposit_to == "savings account"
            @savings_account_balance += amount
        else
            @checking_account_balance += amount
        end
    end

    def withraw(withraw_from,amount)
        if withraw_from == "savings account"

            unless amount > @savings_account_balance
                @savings_account_balance -= amount
            else
                puts "error"
            end
            
        else
            unless amount > @checking_account_balance
                @checking_account_balance -= amount
            else
                puts "error"
            end
          
        end

        # later: create logic if insufficient funds
    end

    def account_information
        puts "User account number: #{@account_number}"
        puts "Total money: #{self.display_total_amount}"
        puts "Checking account money: #{self.checking_account}"
        puts "Savings account money: #{self.savings_account}"
        puts "Interest #{self.interest}"
    end

    private 
        
        def generate_account_number
            account_number = []
            10.times do
                account_number.push(rand(0..9))
            end
            # puts account_number.join("").to_f.is_a?(Float)
            account_number.join("").to_i
        end

        def interest
            return  0.01
        end
end

# user1 = BankAccount.new
# user1.deposit("savings account",1000)
# user1.deposit("savings account",1000)
# user1.deposit("savings account",1000)
# user1.deposit("checkings account",1000)
# user1.withraw("savings account",1560)
# user1.deposit("checkings account",1000)
# user1.account_information
# puts user1.test


user2 = BankAccount.new

user2.deposit("savings account",1000)
user2.account_information
user2.withraw("savings account",780)
user2.account_information
user2.withraw("savings account",780)
user2.account_information
user2.savings_account_balance= 44444
user2.account_information

puts BankAccount.test