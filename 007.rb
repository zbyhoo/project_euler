#!/usr/bin/ruby

# By listing the first six prime numbers: 2, 3, 5, 7, 11, 
# and 13, we can see that the 6th prime is 13.
#
# What is the 10001st prime number?

def eratosthenes_sieve(max_number)
    numbers = (0..max_number+1).to_a
    bound = Math.sqrt(max_number).to_i

    (2..bound+1).each do |current|
        if numbers[current]
            (current+current..max_number+1).step(current).each do |j| numbers[j] = nil end
        end
    end

    return numbers.compact![2..-1]
end

puts eratosthenes_sieve(110_000)[10000]
