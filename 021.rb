#!/usr/bin/ruby

# Let d(n) be defined as the sum of proper divisors of 
# n (numbers less than n which divide evenly into n).
# If d(a) = b and d(b) = a, where a  b, then a and b 
# are an amicable pair and each of a and b are called 
# amicable numbers.
#
# For example, the proper divisors of 220 are 1, 2, 4, 
# 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. 
# The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#
# Evaluate the sum of all the amicable numbers under 10000.

def sum_factors(number)
    sum = 1
    bound = Math.sqrt(number).to_i + 1
    (2..bound).each do |i|
        if number % i == 0
            sum += i
            sum += number/i if i != number/i
        end
    end
    return sum
end

sum = 0
(2...10_000).each do |number|
    factors_sum = sum_factors(number)
    sum += (factors_sum + number) if factors_sum > number and sum_factors(factors_sum) == number
end

puts sum
