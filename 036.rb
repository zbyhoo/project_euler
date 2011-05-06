#!/usr/bin/ruby

# The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.
# Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.
# (Please note that the palindromic number, in either base, may not include leading zeros.)

class String
    def palindromic?
        return true if self.size == 1
        left = self[0..self.size/2-1]
        start = self.size/2
        start += 1 if self.size.odd? 
        right = self[start..-1].reverse
        return left == right
    end
end

sum = 0
(1...1_000_000).each do |number|
    sum += number if number.to_s.palindromic? and number.to_s(2).palindromic?
end
puts sum

