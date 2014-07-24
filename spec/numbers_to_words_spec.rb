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
  it "should convert 1000 to one thousand," do
    expect(NumbersToWords.thousands(3000)).to eq("three thousand,")
  end
  it "should convert 29000 to twenty nine thousand," do
    expect(NumbersToWords.thousands(29000)).to eq("twenty nine thousand,")
  end
  it "should convert 500000 to five hundred thousand," do
    expect(NumbersToWords.thousands(500000)).to eq("five hundred thousand,")
  end
  it "should convert 1000000 to one million" do
    expect(NumbersToWords.thousands(1000000)).to eq("one million")
  end
  it "string_builder should convert 45 to forty five" do
    expect(NumbersToWords.string_builder(45)).to eq("forty five")
  end
  it "string_builder shoul convert 100" do
    expect(NumbersToWords.string_builder(100)).to eq("one hundred")
  end
  it "string_builder should convert 136 to one hundred and thirty six" do
    expect(NumbersToWords.string_builder(136)).to eq("one hundred and thirty six")
  end
  it "string_builder should convert 1111" do
    expect(NumbersToWords.string_builder(1111)).to eq("one thousand,one hundred and eleven")
  end
  it "should convert 444555 to four hundred and forty four thousand, five hundred and fifty five" do
    expect(NumbersToWords.string_builder(444555)).to eq("four hundred and forty four thousand, five hundred and fifty five")
  end
  it "string_builder should convert 1000000" do
    expect(NumbersToWords.string_builder(1000000)).to eq("one million")
  end
 end