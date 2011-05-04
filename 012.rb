#!/usr/bin/ruby

# The sequence of triangle numbers is generated by adding the natural numbers.
# So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28.
# The first ten terms would be: 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# Let us list the factors of the first seven triangle numbers:
#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.
#
# What is the value of the first triangle number to have over five hundred divisors?

require 'set'

max_divisors = 500
divisors_count = 0
number = 1
triangle_number = 0

while true
    triangle_number += number
    divisors = [].to_set
    for i in (1..Math.sqrt(triangle_number).to_i) do
        if triangle_number % i== 0
            divisors.add(i)
            divisors.add(triangle_number/i)
        end
    end

    if divisors.length > max_divisors
        puts triangle_number
        exit
    end

    number += 1
end


