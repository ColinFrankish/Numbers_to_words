require 'numbers_to_words'

describe NumbersToWords do

  it "should convert 1 to one" do
    expect(NumbersToWords.zero_to_99(1)).to eq("one")
  end

  it "should convert 9 to nine" do
    expect(NumbersToWords.zero_to_99(9)).to eq("nine")
  end

  it "should convert 13 to thirteen" do
    expect(NumbersToWords.zero_to_99(13)).to eq("thirteen")
  end

  it "should convert 18 to eighteen" do
    expect(NumbersToWords.zero_to_99(18)).to eq("eighteen")
  end

  it "should convert 26 to twenty six" do
    expect(NumbersToWords.zero_to_99(26)).to eq("twenty six")
  end
  it "should convert 89 to eighty nine" do
    expect(NumbersToWords.zero_to_99(89)).to eq("eighty nine")
  end
  it "should convert 200 to two hundred" do
    expect(NumbersToWords.hundreds(200)).to eq("two hundred")
  end
  it "should convert 345 to three hundred and forty five" do
    expect(NumbersToWords.string_builder(345)).to eq("three hundred and forty five")
  end
  it "should convert 956 to nine hundred and fifty six" do
    expect(NumbersToWords.string_builder(956)).to eq("nine hundred and fifty six")
  end
end