require('rspec')
require('scrabble')
require('pry')

describe('scrabble') do
  it("returns a scrabble score for a letter") do
    expect("A".scrabble()).to(eq(1))
  end

  it("returns a 2 if letter equals 'D,G'") do
    expect("D".scrabble()).to(eq(2))
  end

  it("returns a 3 if letter equals 'B,C,M,P'") do
    expect("B".scrabble()).to(eq(3))
  end

  it("returns a 4 if letter equals 'F,H,V,W,Y'") do
    expect("F".scrabble()).to(eq(4))
  end

  it("returns a 5 if letter equals 'K'") do
    expect("K".scrabble()).to(eq(5))
  end

  it("returns a 8 if letter equals 'J,X'") do
    expect("J".scrabble()).to(eq(8))
  end

  it("returns a 10 if letter equals 'Q,Z'") do
    expect("Q".scrabble()).to(eq(10))
  end
end
