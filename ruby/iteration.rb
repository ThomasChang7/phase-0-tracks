# Release 0

def sing(a, b)
  puts "Happy Birthday!"
end

puts sing("Thomas", "Arra") { |a, b| puts "Happy Birthday #{a} and #{b}" }
# => Only "Happy Birthday!" should print

def sing(a, b)
  puts "Happy Birthday!"
  yield(a,b)
end

puts sing("Thomas", "Arra") { |a, b| puts "Happy Birthday #{a} and #{b}" }
# => "Happy Birthday!" & "Happy Birthday Thomas and Arra!!!"

# Release 1

# made a hash about lala land
movie = {
  movie: "lala land",
  actor: "ryan gosling",
  actress: "emma stone",
  director: "damien chazelle"
  }
# will iterate through each portion of hash and print the value
movie.each { |x, y| puts "The #{x} is #{y}" }
# will go through each part of the hash and change the value into its proper capitalized form by splitting and then joining at the empty space between the words
# however will not modify the original hash
movie.map { |x, y| y.split(" ").map!{ |name| name.capitalize }.join(" ") }
# will call the original array
movie.each { |x, y| puts "The #{x} is #{y}" }
dogs = ["fido", "bob", "snoop"]
#iterate using each
dogs.each do |x|
  puts "#{x}"
end
#iterate using map, does't modify dog array
dogs.map do |x|
  x.upcase
end

#iterate using map with destructive (!), dog array should be modified into capitalized letters .
dogs.map! do |x|
  x.upcase
end
#Should return dogs=["FIDO","BOB","SNOOP"]

# Array methods that take in a block: select, reject, keep_if, delete_if, take_while
# Hash methods that take in a block: empty?

# 1.A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).
arr1 = [2,3,4,5,6,7,8]
arr1.delete_if { |x| x < 5 }
# => arr1 = [5,6,7,8]

hash1 = {first: 1, second: 2, third: 3, fourth: 4, fifth: 5, sixth: 6}
hash1.delete_if { |k,v| v == 4}
# => {:first=>1, :second=>2, :third=>3, :fifth=>5, :sixth=>6}

# 2.A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).
arr2 = [2,3,4,5,6,7,8]
arr2.select { |x| x < 5}
# arr2.reject{ |x| x >= 5 } will do the same thing

hash2 = {first: 1, second: 2, third: 3, fourth: 4, fifth: 5, sixth: 6}
hash2.select { |k,v| k[0] == "s" }
# => {:second=>2, :sixth=>6} because second and sixth both begin with "s"

# 3.A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!
arr3 = ["a","b","c","d","e"]
arr3.index { |x| x == "c" }
# => 2
fruits_veggie = {a: "apple", b: "banana", c:"carrot", d: "durian"}
fruits_veggie.reject { |k,v| v != "banana"}
# => {:b=>"banana"}

# 4.A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).
arr4 = [6,7,8,9,10,11,12,13,14]
arr4.take_while { |x| x % 2 == 0 }
# => [6], this method returns false when it reaches 7 because 7 is not an even number and will return whatever it has taken
