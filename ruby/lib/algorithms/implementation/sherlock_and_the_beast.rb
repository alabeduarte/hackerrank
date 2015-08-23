module Hackerhank
  module Algorithms
    module Implementation
      class Sherlock
        SMALLER_DECENT_VALUE = 3
        BIGGER_DECENT_VALUE = 5

        def initialize(number_of_digits)
          @number_of_digits = number_of_digits
        end

        def decent_number
          return decent_digit_splitited if (bigger_than_decent_number?)

          result = ''
          number_of_digits.times { result << decent_digit }

          result
        end

        private

        def decent_digit
          case number_of_digits
          when ->(n) { n % SMALLER_DECENT_VALUE == 0 }
            BIGGER_DECENT_VALUE.to_s
          when ->(n) { n % BIGGER_DECENT_VALUE == 0 }
            SMALLER_DECENT_VALUE.to_s
          else
            '-1'
          end
        end

        def bigger_than_decent_number?
          splitted_factor > BIGGER_DECENT_VALUE
        end

        def decent_digit_splitited
          first_value = Sherlock.new(splitted_factor).decent_number
          second_value = Sherlock.new(number_of_digits - splitted_factor).decent_number

          first_value << second_value
        end

        def splitted_factor
          (number_of_digits % BIGGER_DECENT_VALUE + number_of_digits)/2
        end

        attr_reader :number_of_digits
      end
    end
  end
end
