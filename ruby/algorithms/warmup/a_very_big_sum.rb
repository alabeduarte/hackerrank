gets.to_i

array = gets.split(' ')

puts array.map(&:to_i).reduce(:+)
