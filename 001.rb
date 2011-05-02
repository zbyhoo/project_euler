#!/bin/ruby

def number_ok(number)
	return (number % 3 == 0 or number % 5 == 0)
end

puts (1...1000).inject(0) { |total, number| number_ok(number) ? total + number : total }
