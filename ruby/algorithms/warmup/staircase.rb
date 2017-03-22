height = gets.to_i

staircase = (1..height).map { |n| (' ' * (height - n)) + ('#' * n) }
staircase.each { |floor| puts floor }
