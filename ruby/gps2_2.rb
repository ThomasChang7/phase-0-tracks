# Method to create a list
def create_list (items)
  list = {}
# We will split the items up in the parameter. The items will be an array.
# input: string of items separated by spaces (example: "carrots apples cereal pizza").
#We will split these up into an array and iterate through it. With the Qty as a default value of 1.
  items.split(" ").each do |item|
    list[item] = 1
  end
  # output: List will be created with a hash data structure. # print the list to the console. We'll make it look pretty in another method.
  return list
end

# Method to add an item to a list
# input: This method will take three parameters: list, item name, and optional quantity.
# steps: First, we will find the matching list.
  # We will add a new key-value pair in the hash with key being the item name the value as the quantity If nothing is put in for quantity,
  # we will use the default value of one.
# output: Return the updated list
def add_item(list, item, quantity = 1)
  list[item] = quantity
  return list
end

# Method to remove an item from the list
# input: This method will take two parameters, list and item.
# steps:  Find the list, delete a key that matches the item name.
# output: Return updated list of removed items.
def remove_item(list, item)
  list.delete(item)
  return list
end

# Method to update the quantity of an item
# input: Parameters would the list, item and quantity.
# steps: Find the list, find the item that matches it, and update quantity.
# output: Return the key with the updated value.
def update_quantity(list, item, quantity)
  list[item] = quantity
  return list
end

# Method to print a list and make it look pretty
# input: parameter would be the list.
# steps: We could have a statement that introduces the list, "Here is your list:".
# We could go through each item and quantity printing out the results.
# output: We will return your entire name list, such as "item: qty: # "
def print_list(list)
  puts "Here is your list:"
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end
end

# Driver Code
p test_list = create_list(" ")
p test_list = add_item(test_list, "lemonade", 2)
p test_list = add_item(test_list, "tomatoes", 3)
p test_list = add_item(test_list, "onions", 1)
p test_list = add_item(test_list, "ice cream", 4)
p test_list = remove_item(test_list, "lemonade")
p test_list = update_quantity(test_list, "ice cream", 1)
p test_list = print_list(test_list)
=begin
# What did you learn about pseudocode from working on this challenge?
# I learned that pseudocode is very tedious but will be very helpful in the long
# run. Pseudocode makes it easier to understand for the developer and whoever
# else looks at the code.
# What are the tradeoffs of using arrays and hashes for this challenge?
# A hash has the advantage of not being ordered or numbered so the computer will
# instantly find the key. An array is ordered and is useful if we need to find
# the order of things. In this challenge, a hash was better because we needed a
# key value pair
# What does a method return?
# A method returns the last line of code executed unless we explicitly return a value.
# What kind of things can you pass into methods as arguments?
# We can pass anything into methods as arguments, even other methods we defined previously.
# How can you pass information between methods?
# We pass those methods as arguments.
# What concepts were solidified in this challenge, and what concepts are still confusing?
# I learned more about passing methods as arguments, and more about hashes in general.
# The parts that got confusing were trivial things such as setting a default value in the parameters.
=end
