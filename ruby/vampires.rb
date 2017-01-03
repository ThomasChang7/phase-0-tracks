puts "How many users will be taking this survey?"
users = gets.chomp
i = 0
while i < users.to_i
  puts "What is your name?"
  name = gets.chomp
  puts "How old are you?"
  age = gets.chomp
  puts "What year were you born?"
  year = gets.chomp
  puts "Our company cafeteria serves garlic bread. Should we order some for you?"
  answer = gets.chomp
  puts "Would you like to enroll in the company's health insurance?"
  insurance = gets.chomp

  allergy = nil
  loop do
  puts "Allergies?"
  allergy = gets.chomp
  if allergy == "done"
    break
  elsif allergy == "sunshine"
    break
  end
end


  if (2017 - (year.to_i) == (age.to_i) && answer == "yes"|| insurance == "yes") && allergy != "sunshine"
    puts "Probably not a vampire"
  elsif ((2017 - year.to_i != age.to_i) && (answer == "no"|| insurance == "no")) || allergy == "sunshine"
    puts "Probably a vampire"
  elsif 2017 - year.to_i != age.to_i && answer == "no" && insurance == "no"
    puts "Almost certainly a vampire"
  elsif name == "Drake Cula" || name == "Tu Fang"
    puts "Definitely a vampire"
  else
    puts "Results inconclusive"
  end
  i += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
