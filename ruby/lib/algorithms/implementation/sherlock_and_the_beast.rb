module Hackerhank
  module Algorithms
    module Implementation
      class Sherlock
        def decent_number(number_of_digits)
          bigger_digit?(number_of_digits) ?
            RecursiveDecentNumber.new(number_of_digits).to_s :
            DecentNumber.new(number_of_digits).to_s
        end

        private

        def bigger_digit?(number_of_digits)
          DecentNumber.new(number_of_digits)
            .neither_divisible_or_smaller?
        end

        class DecentNumber
          SMALLER_DECENT_VALUE = 3
          BIGGER_DECENT_VALUE = 5

          def initialize(number_of_digits)
            @number_of_digits = number_of_digits
          end

          def to_s
            case @number_of_digits
            when ->(n) { divisible_by_3?(n) }
              build_with(BIGGER_DECENT_VALUE)
            when ->(n) { divisible_by_5?(n) }
              build_with(SMALLER_DECENT_VALUE)
            else
              '-1'
            end
          end

          def divisible_by_5?(number)
            number % BIGGER_DECENT_VALUE == 0
          end

          def divisible_by_3?(number)
            number % SMALLER_DECENT_VALUE == 0
          end

          def neither_divisible_or_smaller?
            !divisible_by_3?(@number_of_digits) &&
              !divisible_by_5?(@number_of_digits) &&
              @number_of_digits > SMALLER_DECENT_VALUE &&
              @number_of_digits > BIGGER_DECENT_VALUE
          end

          private

          def build_with(decent_value)
            Array.new(@number_of_digits, decent_value).join
          end
        end

        class RecursiveDecentNumber < DecentNumber
          def to_s
            find_decent_number(@number_of_digits, 0).join
          end

          def find_decent_number(left, right)
            return [] if left < 0 || right < 0

            if divisible_by_5?(left) && divisible_by_3?(right)
              Array.new(right, BIGGER_DECENT_VALUE)
                .concat(Array.new(left, SMALLER_DECENT_VALUE))
            else
              find_decent_number(left - 1, right + 1)
            end
          end
        end
      end
    end
  end
end

# test_cases = gets.to_i
# test_cases.times do
#   input = gets.to_i
#   sherlock = Hackerhank::Algorithms::Implementation::Sherlock.new
#   puts sherlock.decent_number(input)
# end
