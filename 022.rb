#!/usr/bin/ruby

# Using names.txt, a 46K text file containing over five-thousand first names, 
# begin by sorting it into alphabetical order. Then working out the alphabetical 
# value for each name, multiply this value by its alphabetical position in 
# the list to obtain a name score.
#
# For example, when the list is sorted into alphabetical order, COLIN, which 
# is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. 
# So, COLIN would obtain a score of 938 * 53 = 49714.
#
# What is the total of all the name scores in the file?

def alpha_value(string)
    return string.each_byte.inject(0) { |sum, byte| sum + (byte - 'A'[0] + 1) }
end

File.open('names.txt', 'r') do |names_file|
    puts names_file.gets.gsub('"', '').split(',').sort.each_with_index.inject(0) { |sum, (name, index)| 
        sum + (alpha_value(name) * (index + 1)) 
    }
end
