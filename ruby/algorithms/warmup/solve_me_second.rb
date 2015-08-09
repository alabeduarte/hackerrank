def solve_me_second (a, b)
  a + b
end

test_cases = gets.to_i

(0...test_cases).each do |i|
  input = gets.strip.split(' ')

  a = input[0].to_i
  b = input[1].to_i

  puts solve_me_second(a,b)
end
