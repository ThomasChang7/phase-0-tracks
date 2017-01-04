# ask user to input data about the hamster
# hamster name - STRING
# volume - integer
# fur color - string
# adoption good? - (Y/N) STRING
# estimated age - integer

puts "What is the hamster's name?"
hname = gets.chomp

puts "How loud is the hamster on a scale of 1-10?"
vol = gets.chomp

puts "What color is the hamster?"
color = gets.chomp

puts "Is the hamster a good candidate for adoption? (True/False)"
adopt = gets.chomp
if adopt == "True"
  adopt = true
else
  adopt = false
end

puts "How old is the hamster?"
age = gets.chomp
if age == ""
  age = nil
end

puts "The hamster name is #{hname}"
puts "The hamster has a volume of #{vol.to_i}"
puts "The hamster has #{color} colored fur"
puts "The hamster is ready for adoption: #{adopt}"
if age == nil
  puts "The hamster's age is unknown"
else
  puts "The hamster's age is #{age.to_i}"
end
