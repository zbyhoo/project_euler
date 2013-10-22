#!/usr/bin/python

# We shall define a square lamina to be a square outline 
# with a square "hole" so that the shape possesses vertical 
# and horizontal symmetry. For example, using exactly 
# thirty-two square tiles we can form two different square laminae:
#
#   ######      #########
#   ######      #       #
#   ##  ##      #       #
#   ##  ##      #       #
#   ######      #       #
#   ######      #       #
#               #       #
#               #       #
#               #########
#
# With one-hundred tiles, and not necessarily using all of the tiles 
# at one time, it is possible to form forty-one different square laminae.
#
# Using up to one million tiles how many different square laminae can be formed?

def sum_of_squares(current_sum, side, squares_count):
    current_sum += (side * 4 - 4)
    if (current_sum > squares_count):
        return 0
    else:
        return 1 + sum_of_squares(current_sum, side + 2, squares_count)

def square_lamina_count(squares_count):
    count = 0
    inner = 3
    inner_sum = inner * 4 - 4

    while (inner_sum <= squares_count):
        count += sum_of_squares(0, inner, squares_count)
        inner += 1
        inner_sum = inner * 4 - 4

    return count


print(square_lamina_count(1000000))