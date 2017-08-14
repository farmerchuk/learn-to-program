def old_roman_numeral(num_as_integer)
  thousands = num_as_integer / 1000
  hundreds = num_as_integer % 1000 / 100
  tens = num_as_integer % 1000 % 100 / 10
  ones = num_as_integer % 1000 % 100 % 10 / 1

  thousands_in_roman = ""
  fivehundreds_in_roman = ""
  hundreds_in_roman = ""
  fifties_in_roman = ""
  tens_in_roman = ""
  fives_in_roman = ""
  ones_in_roman = ""

  thousands_in_roman = "M" * thousands
  hundreds >= 5 ? fivehundreds_in_roman = "D" : fivehundreds_in_roman = ""
  hundreds >= 5 ? hundreds_in_roman = "C" * (hundreds - 5) : hundreds_in_roman = "C" * hundreds
  tens >= 5 ? fifties_in_roman = "L" : fifties_in_roman = ""
  tens >= 5 ? tens_in_roman = "X" * (tens - 5) : tens_in_roman = "X" * tens
  if ones == 9
    ones_in_roman = "IX"
  elsif ones == 4
    ones_in_roman = "IV"
  else
    ones >= 5 ? fives_in_roman = "V" : fives_in_roman = ""
    ones >= 5 ? ones_in_roman = "I" * (ones - 5) : ones_in_roman = "I" * ones
  end

  thousands_in_roman +
    fivehundreds_in_roman +
    hundreds_in_roman +
    fifties_in_roman +
    tens_in_roman +
    fives_in_roman +
    ones_in_roman
end

puts old_roman_numeral 3250
puts old_roman_numeral 53
puts old_roman_numeral 9511
puts old_roman_numeral 1
puts old_roman_numeral 69
puts old_roman_numeral 9
puts old_roman_numeral 4
