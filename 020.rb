#!/usr/bin/ruby

# n! means n * (n  1) * ... * 3 * 2 * 1
#
# For example, 10! = 10 * 9 * ... * 3 * 2 * 1 = 3628800,
# and the sum of the digits in the number 10! is 
# 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
# Find the sum of the digits in the number 100!

class Integer
    def factorial
        (1..self).inject(1) { |product, value| product * value}
    end
end

puts 100.factorial.to_s.split('').inject(0) { |sum, digit| sum + digit.to_i }
