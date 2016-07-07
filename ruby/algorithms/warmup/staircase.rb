height = gets.to_i

height.downto(1).each do |n|
  floor = ''
  height.times { floor << '#' }
  (n - 1).times { floor.sub!('#', ' ') }

  puts floor
end
