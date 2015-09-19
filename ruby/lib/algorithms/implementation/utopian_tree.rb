module Hackerhank
  module Algorithms
    module Implementation
      class UtopianTree
        def initialize(cycles)
          @cycles = cycles
        end

        def height
          return 1 if @cycles <= 0

          @cycles.times.reduce(1) do |height, cycle|
            cycle.even? ? height * 2 : height + 1
          end
        end
      end
    end
  end
end

# test_cases = gets.to_i
# test_cases.times do
#   input = gets.to_i
#   utopian_three = Hackerhank::Algorithms::Implementation::UtopianTree.new(input)
#   puts utopian_three.height
# end
