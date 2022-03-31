#write a method that checks whether a portion of the characters in string 1 can be rearranged to match string 2
#Input: two strings
#Output: true/false
#The method can split both str1 and str2 into arrays, then return true if all chars in str2 are in str 1
#Data structure: arrays
#Algorithm: 
# create two arrays of characters for each string
# iterate through char array 2. If any of the characters are not in arr1, return false
# after exiting iteration, return true.

def scramble(str1, str2)
  chars1 = str1.chars
  chars2 = str2.chars
  chars2.each do |char|
    if !chars1.include?(char)
      return false
    end
  end
  return true
end



#Test cases:
p scramble('wdofrplcd', 'world') == true
p scramble('abcde', 'fghij') == false
p scramble('katas', 'steak') == false