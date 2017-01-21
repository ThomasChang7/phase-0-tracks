require_relative 'game'

describe Guess do
  let (:guess) { Guess.new("banana")}

  it "creates an array with the same length as the amount of characters in the answer" do
    expect(guess.current).to eq("______")
  end

  it "tells the user how many guesses there are remaining" do
    guess.attempt("a")
    expect(guess.remaining).to eq(4)
  end

  it "guesses a letter and returns feedback to the user" do
    guess.attempt("a")
    expect(guess.current).to eq("_a_a_a")
  end

  it "does not increase count if a guess was repeated" do
    guess.attempt("a")
    guess.attempt("a")
    expect(guess.remaining).to eq(4)
  end

  it "shows the user a taunting message for losing" do
    guess.final("durian")
    expect(guess.final).to eq("You suck, you'll never know the answer")
  end



end
