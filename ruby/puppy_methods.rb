class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times { puts "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(age)
      puts age * 7
  end

  def bang
    puts "*play dead*"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end

class Kitten

  def initialize
    puts "Initializing new kitten instance...meow meow...meow"
  end

  def go_crazy(int)
    int.times {puts "*runs back and forth in the room*" }
  end

  def bother(object)
    puts "Lies down on #{object} while you are trying to do work."
  end

end





# driver code
tootsie = Puppy.new


tootsie.fetch("bone toy")
tootsie.speak(4)
tootsie.roll_over
tootsie.dog_years(3)
tootsie.bang


# make 50 instances of Kitten class
counter = 0
kittenz = []
until counter == 50
  kittenz << Kitten.new
  counter += 1
end

# p kittenz

kittenz.each do |kitten|
  kitten.go_crazy(2)
  kitten.bother("keyboard")
end
