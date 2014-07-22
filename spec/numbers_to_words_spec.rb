require 'numbers_to_words'

describe NumbersToWords do

  it "should convert 1 to one" do
    expect(NumbersToWords.to_words(1)).to eq("one")
  end

  it "should convert 9 to nine" do
    expect(NumbersToWords.to_words(9)).to eq("nine")
  end

  it "should convert 18 to eighteen" do
    expect(NumbersToWords.to_words(18)).to eq("eighteen")
  end
end