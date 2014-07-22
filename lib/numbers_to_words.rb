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
  @tens = { 20 => "twenty",
            30 => "thirty",
            40 => "forty",
            50 => "fifty",
            60 => "sixty",
            70 => "seventy",
            80 => "eighty",
            90 => "ninety"}        
  def self.to_words(num)
    if @one_to_nineteen.has_key?(num)
      @one_to_nineteen[num]
      else
        string = ""
        if num >= 20
            string << @tens[num.to_s.split(//)[0].to_i * 10]
            string << " "
            string << @one_to_nineteen[num.to_s.split(//)[1].to_i]
        end
        string
    end
  end
end