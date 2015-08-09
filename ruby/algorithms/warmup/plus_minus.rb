total = gets.to_f
numbers = gets.split(' ').map(&:to_i)

positive_numbers = numbers.select { |n| n > 0 }.size
negative_numbers = numbers.select { |n| n < 0 }.size
zero = numbers.select { |n| n == 0 }.size

puts (positive_numbers/total)
puts (negative_numbers/total)
puts (zero/total)
