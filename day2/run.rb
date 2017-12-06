require './checksum'

puts Checksum.calculate(file: "spreadsheet_part1.txt")
puts Checksum.calculate(file: "spreadsheet_part1.txt", method: :divisible_numbers)
