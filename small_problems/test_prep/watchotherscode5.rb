=begin
function finds the length of the longest substring that is a palindrome, not including spaces
Input: string
Output: integer
zzbaabcd = 4

data structure: array of substrings
Algorithm: 
1. Split input string into array of all possible substrings
  a. iterate with two indices
2. Select only the substrings that are palindromes
  a. Use select method on the array of all substrings, 
  b. select substring.reverse = substring
  
3. return the length of the smallest palindrome in the array

=end

def longest_palindrome(str)
  return 0 if str.length == 0
  substrings = []
  (str.length).times do |idx1|
    str[idx1..].length.times do |idx2|
      substrings << str[idx1..(idx1 + idx2)]
    end
  end
  substrings.select! { |substring| substring.reverse == substring }
  substrings.map! {|substring| substring.length}
  p substrings.max
end

longest_palindrome('zzbaabcd')