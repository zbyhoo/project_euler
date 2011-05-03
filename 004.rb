#!/usr/bin/ruby

# A palindromic number reads the same both ways. The largest palindrome made 
# from the product of two 2-digit numbers is 9009 = 91 * 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

999.downto(100) do |partial|
    number = partial * 1000 + partial.to_s.reverse.to_i

    999.downto(100) do |divisor|
        if number % divisor == 0 and (100..999).include?(number/divisor)
            puts number
            exit 
        end
    end
end
