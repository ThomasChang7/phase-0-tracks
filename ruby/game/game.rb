=begin
Using plain old English in a text file or other scratch pad, pseudocode a class
for a word-guessing game that meets the following specifications. Assume your
driver code will handle input and output as far as the user is concerned. In
other words, write a class designed for a computer program to use, not one
designed for a human to use directly, then use driver code to bridge the gap
between human and Ruby object.

One user can enter a word (or phrase, if you would like your game to support
that), and another user attempts to guess the word.
Guesses are limited, and the number of guesses available is related to the
length of the word.
Repeated guesses do not count against the user.
The guessing player receives continual feedback on the current state of the
word. So if the secret word is "unicorn", the user will start out seeing
something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the
user enters a guess of "c".
The user should get a congratulatory message if they win, and a taunting
message if they lose.

# Create a class
# input: class Guessing
# steps: start with class Guessing and end
# output: nil

# Method to create the word to be guessed
# input: guess = Guess.new(answer)
# steps: define the method and set the answer to whatever the user inputs
# output: count = 5, feedback = "_" with the number of underscores depending
# on the length of the answer

# Method to increase guesses attempted, does not increase if it is a repeat
# input: no input
# steps: set a counter variable that decreases by one every time, if it reaches
# a certain number, then guesses are not allowed anymore
# output: past guesses

# Method to give feedback to user after every guess
# input: no input
# steps: make an array of the same length as the answer and change everything
# to _ and split it up. If a user guesses the correct letter, then change the
# corresponding index of the letter to that letter and join the array to make
# one word and return it to the user
# output: nil

# Method for one final guess
# input: no input
# steps: if user input is equal to the answer, then return a congratulatory
# message, if it isn't, taunt the user

=end

class Guess

  attr_reader :answer, :feedback, :count, :letter, :repeats

  def initialize(answer)
    @answer = answer
    @count = answer.length + 1
    @feedback = answer.split("").map!{ |char| char = "_"}.join
    @letter = nil
    @repeats = []
    @switch = false
  end

  def attempt(letter)
    @letter = letter
    if @repeats.include?(letter)
      "You already guessed that letter!"
    elsif @answer.include?(@letter)
      @count -= 1
      @repeats << letter
      idx_array = @answer.split("").each_index.select{ |i| @answer[i] == @letter }
      idx_array.each do |idx|
        @feedback[idx] = @letter
        if @count == 0
          @switch = true
        end
      end
    else
      @count -= 1
      @repeats << letter
      if @count == 0
        @switch = true
      end
    end
    @feedback
  end

  def final(word)
    if @answer == word
      "Congratulations! You win"
    else
      "You are a loser"
    end
  end

  def switch
    @switch
  end

end

#   Interface
  puts "Let's play Guess"
  puts "Can one player step up and input a word?"
  answer = gets.chomp
  play = Guess.new(answer)
  system ('clear')
  until play.switch == true
    puts "Input a letter"
    letter = gets.chomp
    play.attempt(letter)
    puts "You have #{play.count} guesses left"
    puts "So far you have #{play.feedback}"
    play.switch
  end
    puts "You have run out of attempts, please guess the final word"
    guess = gets.chomp
    puts play.final(guess)



# Driver code
# p guess = Guess.new("banana")
# p guess.attempt("b")
# p guess.remaining
# p guess.attempt("b")
# p guess.remaining
# p guess.attempt("z")
# p guess.attempt("n")
# p guess.attempt("e")
# p guess.attempt("l")
# p guess.attempt("m")
# p guess.final("durian")
