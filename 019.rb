#!/usr/bin/ruby

# You are given the following information, but you may prefer to do 
# some research for yourself.
#
# * 1 Jan 1900 was a Monday.
# * Thirty days has September,
#   April, June and November.
#   All the rest have thirty-one,
#   Saving February alone,
#   Which has twenty-eight, rain or shine.
#   And on leap years, twenty-nine.
# * A leap year occurs on any year evenly divisible by 4, but not 
#   on a century unless it is divisible by 400.
#
# How many Sundays fell on the first of the month during 
# the twentieth century (1 Jan 1901 to 31 Dec 2000)?

def is_leap?(year)
   return year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
end

months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

total_days = 0
sundays = 0

(1900..2000).each do |year|
   months[1] = (is_leap?(year)) ? 29 : 28
   months.each do |days_per_month|
      total_days += days_per_month
      sundays += 1 if total_days % 7 == 6 and year > 1900
   end
end

puts sundays
