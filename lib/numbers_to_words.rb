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
  
  def self.zero_to_99(num)
    string = ""
    if @one_to_nineteen.has_key?(num)
      @one_to_nineteen[num]
      else       
      if num >= 20 && num <= 99
            string << @tens[num.to_s.split(//)[0].to_i * 10] + " " +
                     @one_to_nineteen[num.to_s.split(//)[1].to_i]
      end
    end
  end

  def self.hundreds(num)
    if num > 99 && num <= 999
      @one_to_nineteen[num.to_s.split(//)[0].to_i] + " hundred"    
    end
  end

  def self.thousands(num)
    calc = num.to_s[0..-4]
    result = ""
      if calc.length == 3 && self.zero_to_99(calc[1,2].to_i) == nil
        result << self.hundreds(calc.to_i) + " thousand,"
        result
      elsif calc.length == 3
        result << self.hundreds(calc.to_i)
        self.zero_to_99(calc[1,2].to_i) == nil ? "" : result << " and " + self.zero_to_99(calc[1,2].to_i).to_s + " thousand,"
        result
      else calc.length < 3
        self.zero_to_99(calc[0..2].to_i) + " thousand,"
      end
  end

  def self.string_builder(num)
      if num.to_s.length < 3
        self.zero_to_99(num)
      elsif num.to_s.length == 3
        result = ""
        result << self.hundreds(num) 
        self.zero_to_99(num.to_s[1,2].to_i) == nil ? "" : result << " and " + self.zero_to_99(num.to_s[1,2].to_i).to_s
        result  
      elsif num.to_s.length > 3 && num.to_s.length < 7
        self.thousands(num).to_s + self.hundreds(num.to_s.split(//).last(3).join.to_i).to_s + " and " + self.zero_to_99(num.to_s.split(//).last(2).join.to_i).to_s
      else num == 1000000
        "one million"
      end
  end
end

