#!/usr/bin/ruby

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

def dividable_by_all?(max_divisor, number)
    max_divisor.downto(2) do |divisor|
        return false if number % divisor != 0
    end
    return true
end

max_divisor = 20
infinity = 1.0/0

(1..infinity).each do |iteration|

    number = max_divisor * iteration

    if dividable_by_all?(max_divisor, number)
        puts number
        exit
    end
end
