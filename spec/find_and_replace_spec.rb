require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do

  it("replaces one word in a string with another word") do
    expect("Today is thursday".find_and_replace("thursday", "wednesday")).to(eq('Today is wednesday'))
  end

  it("replaces one word in a string with partial matches") do
    expect("I am walking my cat to the cathedral".find_and_replace("cat", "dog")).to(eq('I am walking my dog to the doghedral'))
  end

  # it("returns a scrabble score for a word") do
  #   expect("and".scrabble()).to(eq(4))
  # end
  #
  # it("does not accept non-letters") do
  #   expect{"46*#^t".scrabble()}.to raise_error(ArgumentError)
  # end
  #
  # it("doesn't care about case") do
  #   expect("aBcD".scrabble()).to(eq(9))
  # end
end
