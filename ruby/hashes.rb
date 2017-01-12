# initialize empty hash
client = {}
# prompted user for a value
puts "Please enter your name"
client[:name] = gets.chomp

puts "Please enter your age"
client[:age] = gets.chomp

puts "How many kids do you have?"
client[:kids] = gets.chomp

puts "Decor theme?"
client[:decor] = gets.chomp
#printed client hash
p client
#asked it the user would like to update any values
puts "Values to update?"
answer = gets.chomp
if answer == "yes"
  puts "What key would you like to update? (name, age, kids, decor)"
  update = gets.chomp
  puts "Enter a value"
  value = gets.chomp
  case update
    when "name"
      client[:name] = value
    when "age"
      client[:age] = value
    when "kids"
      client[:kids] = value
    when "decor"
      client[:decor] = value
    else
      puts "You did not input a valid value"
    end
  p client
elsif answer == "none"
  p client
end
