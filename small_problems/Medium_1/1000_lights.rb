require 'pry'
def flip_switches(number_of_switches)
  switches_arr = [false] * number_of_switches
  counter = 1
  loop do
    switches_arr.map!.with_index do |switch, index|
      (index + 1) % (counter) == 0 ? !switch : switch
      end
    counter += 1
    break if counter > number_of_switches
  end
  switches_arr
end

def switches(number)
  boolean_arr = flip_switches(number)
  indices = []
  boolean_arr.each.with_index do |boolean, index|
    if boolean == true
      indices << (index + 1)
    end
  end
  indices
end


p switches(1000)