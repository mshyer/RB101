#Method takes a positive integer number and returns the next bigger number that can be formed with the samed digits
#12 -> 21
#513 -> 531
#2017 -> 2071
#If no bigger number can be formed with the same digits, return -1
#9 -> -1
#531 -> -1
#Input: positive integer number
#output: Positive integer number (or -1)
#Data structure: array of digits

#Algorithm:
#Split the input number into an array of digit strings, then sort them
#initiate loop
#set counter to number value
#Set return integer variable to -1
#loop
#Iterate the counter up.
#Convert counter to string and check if sorted chars matches sorted chars arr
#If it does, set return integer to that number and BREAK loop
#If the number to string in the loop is greater in length than the chars array, break the loop
#return the return variable (-1 or correct number)

def next_largest(num)
  digits_arr = num.digits.sort
  counter = num 
  output_int = -1
  loop do
    counter += 1
    if counter.digits.sort == digits_arr
      output_int = counter
      break
    elsif counter.to_s.length > num.to_s.length
      break
    end
  end
  p output_int
end

next_largest(513)