require_relative 'game'

describe Guess do
  let (:guess) { Guess.new("banana")}

  it "creates an string with the same length as the amount of characters in the answer" do
    expect(guess.feedback).to eq("______")
  end

  it "tells the user how many guesses there are remaining" do
    guess.attempt("a")
    expect(guess.count).to eq(6)
  end

  it "guesses a letter and returns feedback to the user" do
    guess.attempt("a")
    expect(guess.feedback).to eq("_a_a_a")
  end

  it "returns false from switch before all guesses are used up" do
    expect(guess.switch).to eq(false)
  end

  it "should store repeated letters in an array" do
    guess.attempt("a")
    expect(guess.repeats).to eq(["a"])
  end

  it "does not increase count if a guess was repeated" do
    guess.attempt("a")
    guess.attempt("a")
    expect(guess.count).to eq(6)
  end

  it "shows the user a taunting message for losing" do
    expect(guess.final("durian")).to eq("You are a loser")
  end

  it "should switch to true when there are zero guesses left" do
    guess.attempt("a")
    guess.attempt("b")
    guess.attempt("c")
    guess.attempt("d")
    guess.attempt("e")
    guess.attempt("f")
    guess.attempt("g")
    expect(guess.switch).to eq(true)
  end

end
