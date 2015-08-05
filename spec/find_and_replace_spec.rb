require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do

  it("replaces one word in a string with another word") do
    expect("Today is thursday".find_and_replace("thursday", "wednesday")).to(eq('Today is wednesday'))
  end

  it("replaces one word in a string with partial matches") do
    expect("I am walking my cat to the cathedral".find_and_replace("cat", "dog")).to(eq('I am walking my dog to the doghedral'))
  end

end
