class Santa
# Getter and Setters
# Setter method that reassigns a gender
#  def gender=(new_gender)
#   @gender = new_gender
#  end
  attr_reader :ethnicity, :hair
  attr_accessor :gender, :age
# Initialize attributes for santa
  def initialize(gender, ethnicity, hair, weight)
    p "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @hair = hair
    @weight = weight
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end
# Instance method speak
  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end
# Instance method eating cookie
  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie} cookie!"
  end
# Instance method to increase the age of santa by one
  def celebrate_birthday
    @age += 1
  end
# Repositions a reindeer that Santa is mad at to the end of the array reindeer_ranking
  def get_mad_at(reindeer)
    i = 0
    until reindeer == reindeer_ranking[i]
      bad_reindeer = @reindeer_ranking.pop(i)
      @reindeer_ranking.push(bad_reindeer)
      @reindeer_ranking
    end
  end
# Getter methods, age will return age and ethnicity will return ethnicity and so on and so forth
  def age
    @age
  end


  def ethnicity
    @ethnicity
  end

end
# Driver code
=begin
will = Santa.new("Male", "Asian", "Straight",185)
p will.age
p will.celebrate_birthday
p will.age
p will.gender
will.gender = "Unknown"
p will.gender
=end
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A", "intersex", "two-spirit", "ftm", "pangender", "neutrois"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "taiwanese", "chinese", "alien", "ox", "elf"]
example_hair = ["curly", "permed", "dreadlocks", "nasty", "straight", "ginger", "blonde", "brunette", "bald", "white", "wig", "pink"]
10.times do |santa|
  santa = Santa.new(example_genders.sample, example_ethnicities.sample, example_hair.sample, rand(100..350))
  santa.age = rand(140)
  p "Santa's gender: #{santa.gender}, ethnicity: #{santa.ethnicity}, hair: #{santa.hair}, age: #{santa.age}."
end
