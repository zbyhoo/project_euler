#!/usr/bin/ruby

# The following iterative sequence is defined for the set of positive integers:
# n => n/2 (n is even)
# n => 3n + 1 (n is odd)
#
# Using the rule above and starting with 13, we generate the following sequence:
# 13  40  20  10  5  16  8  4  2  1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. 
# Although it has not been proved yet (Collatz Problem), it is thought that all starting 
# numbers finish at 1.
#
# Which starting number, under one million, produces the longest chain?
# NOTE: Once the chain starts the terms are allowed to go above one million.

bound = 1_000_000
chains = {1 => 1}
max_number = 0
max_chain = 0

(3..bound).step(2).each do |number|

    current = number
    counter = 0
    while chains[current].nil?
        current = (current.even?) ? (current / 2) : (3 * current + 1)
        counter += 1
    end
    chains[number] = counter + chains[current]

    if chains[number] > max_chain
        max_chain = chains[number]
        max_number = number
    end
end

puts max_number
