require('rspec')
require('word_calculator')

describe ('word_calculator') do
  it("will add two digits together") do
    word_calculator("What is 5 plus 3?").should(eq(8))
  end
  it("will subtract two digits together") do
    word_calculator("What is 5 minus 3?").should(eq(2))
  end
  it("will divide two digits together") do
    word_calculator("What is 7 divided by 2?").should(eq(3.5))
  end
  it("will multiply two digits together") do
    word_calculator("What is 10 times 2?").should(eq(20))
  end
  it("will multiply two digits together with the word 'multiplied'") do
    word_calculator("What is 10 multiplied by 2?").should(eq(20))
  end
  it("will take a number to the power another number") do
    word_calculator("What is 10 to the 2 power?").should(eq(100))
  end
  it("will take a number to the power another number using different syntax") do
    word_calculator("What is 10 to the power of 2?").should(eq(100))
  end
end

