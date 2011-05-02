#!/usr/bin/ruby

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

def max_prime_factor(number, factor)
    factor += 1 while number % factor != 0
    if (number > factor)
        return [factor, max_prime_factor(number / factor, factor)].max
    end
    return factor
end

puts max_prime_factor(600851475143, 2)
