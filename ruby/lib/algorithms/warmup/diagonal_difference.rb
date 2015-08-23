total = gets.to_i

matrix = total.times.map { gets.split(' ') }

first_diagonal = total.times.map { |n| matrix[n][n].to_i }.reduce(:+)
second_diagonal = total.times.map { |n| matrix[n][(total - 1) - n].to_i }.reduce(:+)

puts (first_diagonal - second_diagonal).abs
