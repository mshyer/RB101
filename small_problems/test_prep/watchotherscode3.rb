#Method finds the maximum sum of a sub array
#[-2, 1, -3, 4, -1, 2, 1, -5, 4] == 6 (4 -1 2 1)
#Empty arrays and array of all negative numbers return 0
#If you could find all the possible sub arrays, you could sum all of them and see which sum is the largest. Otherwise return 0
#Data structure: nested array

#Algorithm: 
#Create empty array (will be nested)
#create a counter variable
#Iterate through input array with index. 
#Create a loop. 
#add sub array input[index..counter] to nested array
#Counter += 1
#Break loop when counter == input[index to end]length
#set counter back to 0, continue iteration
#Now we have a nested array of all possible sub arrays
#Iterate through Nested array, map the sub arrays to their sum
#Sort the mapped array
#return largest value or 0 if less than 1

def max_sum(arr)
  nested_arr = []
  counter = 0
  arr.each.with_index do |item, i|
    loop do
      nested_arr << arr[i..(i + counter)]
      counter += 1
      break if counter == (arr[i..-1].length )
    end
    counter = 0
  end
  p nested_arr
  nested_arr.map! do |arr|
    arr.sum
  end
  if nested_arr.empty?
    0
  elsif nested_arr.max >= 1
    nested_arr.max
  else
    0
  end
end

p max_sum([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sum([-1, -5])
p max_sum([])

#22
#Method determines the longest common prefix in a series of strings
#Input: Array of strings
#Output: string (the prefix). Outputs "" if no common prefix or empty
#Data structure: array of substrings representing prefixes
#Algorithm:
#Create array of substrings []
#create index = 0
#create output string variable ""
#Loop through the array of strings and append [0..index] to substring array
#if they are all equal, set output string variable equal to substring_arr[0]
#break if they are not all equal
#return output variable

def longest_prefix(strings)
  prefixes = []
  i = 0
  output_str = ''
  loop do
    strings.each do |string|
      prefixes << string[0..i]
    end
    i += 1
    break unless prefixes.all? {|pre| pre == prefixes[0]}
    output_str = prefixes[0]
    prefixes = []
  end
  p output_str
end

longest_prefix(["ksjdhfjsdf", "weuhwiefh", "xjkfnwkef"])