require 'numbers_to_words'

describe NumbersToWords do

  it "should convert 1 to one" do
    expect(NumbersToWords.to_words(1)).to eq("one")
  end

end