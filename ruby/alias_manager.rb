# 5.5 Pseudocode
# Split the name into two separate strings which will produce an array with two strings
# Go through each character, if a character is equal to a,e,i,o,u,, then switch it to the next vowel
# if it is a consonant, switch it to the next consonant


def new_name(name)
  vowels = "aeiou".reverse
  consonants = "bcdfghjklmnpqrstvwxyz".reverse
  name_array = name.downcase.split(" ")
  name_array[0], name_array[1] = name_array[1], name_array[0]
  name_array.map! do |word|
    word.chars.map! do |letter|
      if vowels.include?(letter) == true
        idx = vowels.index(letter)
        letter = vowels[idx - 1]
      else
        idx = consonants.index(letter)
        letter = consonants[idx - 1]
      end
    end
  end
  first = name_array[0].join.capitalize
  last = name_array[1].join.capitalize
  first + " " +last
end

user_input = nil
until user_input == "quit"
  puts "Please enter a name"
  user_input = gets.chomp
    if user_input == "quit"
      puts "Exiting Program"
    else
      puts "The name is #{new_name(user_input)}"
    end
end
