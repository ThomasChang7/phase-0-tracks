# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#
#   def self.yelling_happily(words)
#     words + "!" + " :D"
#   end
# end
#
# p Shout.yell_angrily("No!")
# p Shout.yelling_happily("Hi There")

module Shout
  def shout(call)
    p "#{call.upcase}!!! DROP AND GIVE ME 20"
  end

  def cranky(call)
    p "HEY #{call.upcase}!!! GET OFF MY PROPERTY *cough cough*"
  end
end

class Coach
  include Shout
end

class Old_Man
  include Shout
end

coach = Coach.new
coach.shout("stop goofing around")

old_man = Old_Man.new
old_man.cranky("whippersnapper")
