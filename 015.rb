#!/usr/bin/ruby

# Starting in the top left corner of a 2x2 grid, there are 6 routes 
# (without backtracking) to the bottom right corner.
#
# How many routes are there through a 20x20 grid?

grid_size = 20

nodes = Array.new(grid_size + 1) { |array| Array.new(grid_size + 1).fill(0) }
nodes[0][0] = 1

(0..grid_size).each do |x|
    (0..grid_size).each do |y|
        if x > 0 or y > 0
            dx = (x-1 >= 0) ? (x-1) : 0
            dy = (y-1 >= 0) ? (y-1) : 0

            nodes[x][y] = nodes[dx][y] + nodes[x][dy]
        end
    end
end

puts nodes[grid_size][grid_size]
