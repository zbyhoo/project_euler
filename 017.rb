#!/usr/bin/ruby

# If the numbers 1 to 5 are written out in words: one, two, three, four, 
# five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were 
# written out in words, how many letters would be used?
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) 
# contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use 
# of "and" when writing out numbers is in compliance with British usage.

digits = {1 => 'one',
          2 => 'two',
          3 => 'three',
          4 => 'four',
          5 => 'five',
          6 => 'six',
          7 => 'seven',
          8 => 'eight',
          9 => 'nine',
         10 => 'ten',
         11 => 'eleven',
         12 => 'twelve',
         13 => 'thirteen',
         14 => 'fourteen',
         15 => 'fifteen',
         16 => 'sixteen',
         17 => 'seventeen',
         18 => 'eighteen',
         19 => 'nineteen',
         20 => 'twenty',
         30 => 'thirty',
         40 => 'forty',
         50 => 'fifty',
         60 => 'sixty',
         70 => 'seventy',
         80 => 'eighty',
         90 => 'ninety',
        100 => 'hundred',
       1000 => 'onethousand'}

(2..9).each do |tens| 
    (1..9).each do |ones| 
        digits[tens*10 + ones] = digits[tens*10] + digits[ones]
    end
end

9.downto(1).each do |number| 
    digits[number * 100] = digits[number] + digits[100] 
end

(1..9).each do |hundreds| 
    (1..99).each do |numbers| 
        digits[hundreds * 100 + numbers] = digits[hundreds * 100] + 'and' + digits[numbers]
    end
end

puts digits.values.inject(0) { |sum, string| sum += string.length }
