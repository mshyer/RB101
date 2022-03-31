# You are given an array which contains only integers (positive and negative). 
# Your job is to sum only the numbers that are the same and consecutive. The result should be one array.

# You can asume there is never an empty array and there will always be an integer.

=begin
Input: array of integers
Output: Array of integers
Data structure: arrays
Algorithm: 
Overview: 
using
init an output array
init a counter var
init a placeholder var to nil
loop do
does the item equal the next one or the placeholder? If not, add it to the output array
if the item equals the placeholder, next
if it does equal the next one, placeholder = item
loop do
if the item equals the place holder, counter += item
break if the item doesn't equal the placeholder 
  and then add the counter to the array



=end

# def sum_consecutives(arr)
#   output = []
#   counter = 0
#   placeholder = nil
#   arr.each_with_index do |item, idx|
#     if item != arr[idx + 1] && item != placeholder
#       output << item
#       placeholder = item
#     elsif item == placeholder
#       next
#     else
#       idx2 = 0
#       placeholder = item
#       loop do
#         if arr[idx] != arr[idx + idx2]
#           output << counter
#           counter = 0
#           break
#         end
#         counter += arr[idx + idx2] 
#         idx2 += 1
#       end
#     end
#   end
#   output
# end



=begin
create duplicate array
create output array
create placeholder nil
loop do
  output arr shift first element if the element doesn't equal placeholder
    -also set placeholder to that element
  if it does equal the placeholder, arr[-1] += arr.shift
  break if dup array is empty

=end

# def sum_consecutives(arr)
#   duplicate = arr.dup
#   output = []
#   placeholder = nil
#   loop do
#     if duplicate[0] != placeholder
#       placeholder = duplicate.shift
#       output << placeholder
#     else
#       output[-1] = (output[-1] + duplicate.shift)
#     end
#     break if duplicate.empty?
#   end
#     output
# end



p sum_consecutives([1,4,4,4,0,4,3,3,1,1]) == [1,12,0,4,6,2]
p sum_consecutives([1,1,7,7,3]) == [2,14,3]
p sum_consecutives([-5,-5,7,7,12,0]) ==  [-10,14,12,0]
