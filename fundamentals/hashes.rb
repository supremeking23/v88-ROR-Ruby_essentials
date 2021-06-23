user = {
    first_name: "Ivan Christian Jay",
    last_name: "Funcion",
    age: 25,
}

# puts user[:first_name]
# puts user[:age]
# user.delete(:age)
# puts user[:first_name]
# puts user[:age]

# bago = Hash.new
# bago_ulit = {}
# puts user.empty? 
# puts bago.empty? 
# puts bago_ulit.empty? 

# puts user.has_key?(:first_name)
# puts user.has_key?(:address)
# puts user.has_value?("Ivan Christian Jay")
# puts user.has_value?("Vermillion")

def new_user(greetings="Bonjour",user)
    puts "#{greetings}, #{user[:first_name]} #{user[:last_name]}, age #{user[:age]}"
end

new_user(user)
new_user("Olah",user)