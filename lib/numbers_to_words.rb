class NumbersToWords

  @one_to_nineteen = { 1 => "one",
                   2 => "two",
                   3 => "three",
                   4 => "four",
                   5 => "five",
                   6 => "six",
                   7 => "seven",
                   8 => "eight",
                   9 => "nine",
                   10 => "ten",
                   11 => "eleven",
                   12 => "twelve",
                   13 => "thirteen",
                   14 => "fourteen",
                   15 => "fifteen",
                   16 => "sixteen",
                   17 => "seventeen",
                   18 => "eighteen",
                   19 => "nineteen"} 
              
  def self.to_words(num)
    if @one_to_nineteen.has_key?(num)
      @one_to_nineteen[num]
    end
  end
end