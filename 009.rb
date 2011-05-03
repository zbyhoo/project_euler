#!/usr/bin/ruby

# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,
# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def euclids_formula(upper_bound)
   result = []
   for m in (2..upper_bound)
      for n in (1...m)
         result << [m ** 2 - n ** 2, 2 * m * n, m ** 2 + n ** 2]
      end
   end
   return result
end

euclids_formula(500).each do |triplet|
   a, b, c = triplet[0], triplet[1], triplet[2]
   if a + b + c == 1000
      puts a * b * c
      exit
   end
end
