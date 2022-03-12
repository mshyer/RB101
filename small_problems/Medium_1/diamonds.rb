# def diamond(number)
#   counter = 0
#   number/2.times do 
#     puts statement(counter, number)
#     counter += 1
#   end
# end

# def statement(line, number)
#   left = " " * ((number / 2) - line)
#   mid = "*" * (number - ((number / 2 - line) * 2))
#   right = " " * ((number / 2) - line)

#   a = "#{left}#{mid}#{right}"
# end

def diamond(size)
  lines = (1..size).to_a
  lines.each do |line|
    line_stars = stars(line, size)
    p line_stars.center(size)
  end
end

def stars(line, size)
  middle_line = (size / 2) + 1
  stars = size - (2 * ((middle_line) - line).abs)
  "*" * stars
end

# def blanks(stars)
#   blanks = (9 - stars.length) / 2
#   " " * blanks
# end

diamond(9)