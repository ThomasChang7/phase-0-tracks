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
  attr_accessor :count, :letter
  attr_reader :answer

  def initialize(answer)
    @answer = answer
    @count = 5
    @feedback = answer.split("").map!{ |char| char = "_"}.join
    @letter = nil
    @repeats = []
  end

  def current
    @feedback
  end

  def remaining
    @count
  end

  def attempt(letter)
    @letter = letter
    if @repeats.include?(letter)
      return "You already guessed that letter!"
    elsif @count == 0
      return "You have no guesses left, run the final guess method"
    elsif @answer.include?(@letter)
      @count -= 1
      @repeats << letter
      letter_array = @answer.split("").each_index.select{ |i| @answer[i] == @letter }
      letter_array.each do |idx|
        @feedback[idx] = @letter
      end
    else
      @count -= 1
      @repeats << letter
    end
    @feedback
  end

  def final(word)
    if @answer == word
      p "Congratulations! You win"
    else
      p "You suck, you'll never know the answer"
    end
    exit
  end

end

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
