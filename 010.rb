#!/usr/bin/ruby

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

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

puts eratosthenes_sieve(2_000_000).inject { |sum, prime| sum + prime }
