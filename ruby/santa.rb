class Santa

  def initialize(gender, ethinicity)
    p "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @hair = hair
    @weight = weight
    @temperament = temperament
    @age = 0
    reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def speak
    p "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    p "That was a good #{cookie} cookie!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    i = 0
    until reindeer == reindeer_ranking[i]
      bad_reindeer = reindeer_ranking.pop(i)
      reindeer_ranking.push(bad_reindeer)
      reindeer_ranking
    end
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  def gender=(new_gender)
    @gender = new_gender
  end

end
