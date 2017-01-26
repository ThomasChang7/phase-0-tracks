# Virus Predictor

# I worked on this challenge [by myself, with: Mike Bonetti].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
# This will pull in data outside of this file from another file within the same directory.

require_relative 'state_data'

class VirusPredictor
  #Assigns parameters to instance-variables to be used in the class.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #Uses instance-variables to calculate predicted deaths and spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #Determines number of deaths based on pop density

  def density
    if @population_density >= 200
      0.4
    elsif @population_density >= 150
      0.3
    elsif @population_density >= 100
      0.2
    elsif @population_density >= 50
      0.1
    else
      0.05
    end
  end

  def predicted_deaths
    # "Iowa" => {population_density: 54.81, population: 3074186}, 307418
    # "Illinois" => {population_density: 231.9, population: 12875255}, 5150102
    # # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
      number_of_deaths = (density * @population).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed
    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end
  end

  #predicts spread speed based on pop density of the state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, values|
  state = VirusPredictor.new(state, values[:population_density], values[:population])
  state.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

# On your own, add a commented reflection section to your my_solution.rb file. Answer the following questions in your reflection:
#
# What are the differences between the two different hash syntaxes shown in the state_data file?
# One of the hashes uses symbols while the other one uses hash rockets.
# What does require_relative do? How is it different from require?
# Require relative will pull in another file in the same directory while require will load a file through the usage of a load path.
# What are some ways to iterate through a hash?
# Using each method, each_key, each_value
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# That they can be simplified by calling other methods. All of these instance variables can be used all within the class.
# What concept did you most solidify in this challenge?
# I solidified the concept of being DRY and not using unnecessary code. 
