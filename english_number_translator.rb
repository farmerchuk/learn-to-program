def english_number(number)
  number_as_string = number.to_s
  return_string = ""
  ones = { 1 => "one", 2 => "ten", 3 => "one hundred", 4 => "one thousand", 5 => "ten thousand", 6 => "one hundred thousand", 7 => "one million" }
  twos = { 1 => "two", 2 => "twenty", 3 => "two hundred", 4 => "two thousand", 5 => "two thousand", 6 => "two hundred thousand", 7 => "two million" }
  threes = { 1 => "three", 2 => "thirty", 3 => "three hundred", 4 => "three thousand", 5 => "three thousand", 6 => "three hundred thousand", 7 => "three million" }
  fours = { 1 => "four", 2 => "fourty", 3 => "four hundred", 4 => "four thousand", 5 => "four thousand", 6 => "four hundred thousand", 7 => "four million" }
  fives = { 1 => "five", 2 => "fifty", 3 => "five hundred", 4 => "five thousand", 5 => "five thousand", 6 => "five hundred thousand", 7 => "five million" }
  sixes = { 1 => "six", 2 => "sixy", 3 => "six hundred", 4 => "six thousand", 5 => "six thousand", 6 => "six hundred thousand", 7 => "six million" }
  sevens = { 1 => "seven", 2 => "seventy", 3 => "seven hundred", 4 => "seven thousand", 5 => "seven thousand", 6 => "seven hundred thousand", 7 => "seven million" }
  eights = { 1 => "eight", 2 => "eighty", 3 => "eight hundred", 4 => "eight thousand", 5 => "eight thousand", 6 => "eight hundred thousand", 7 => "eight million" }
  nines = { 1 => "nine", 2 => "ninety", 3 => "nine hundred", 4 => "nine thousand", 5 => "nine thousand", 6 => "nine hundred thousand", 7 => "nine million" }
  teens = { 11 => "eleven",
            12 => "twelve",
            13 => "thirteen",
            14 => "fourteen",
            15 => "fifteen",
            16 => "sixteen",
            17 => "seventeen",
            18 => "eighteen",
            19 => "nineteen" }
  digits = { 1 => ones,
             2 => twos,
             3 => threes,
             4 => fours,
             5 => fives,
             6 => sixes,
             7 => sevens,
             8 => eights,
             9 => nines }

  digit_position = number_as_string.size
  last_two_digits = number_as_string[-2, 2]
  number_as_string.each_char do |c|
    if c == "0"
      return_string << ""
      digit_position -= 1
    elsif digit_position == 2 &&
          last_two_digits.to_i > 10 &&
          last_two_digits.to_i < 20
      return_string << teens[last_two_digits.to_i]
      break
    else
      return_string << digits[c.to_i][digit_position] + " "
      digit_position -= 1
    end
  end
  return_string
end

puts english_number 3
puts english_number 213
puts english_number 55
puts english_number 123
puts english_number 5000
puts english_number 9999
puts english_number 13052
puts english_number 986000
puts english_number 1000000
