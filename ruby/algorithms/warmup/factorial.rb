class Factorial
  class << self
    def calculate(number)
      factorial(number)
    end

    private

    def factorial(number, result: number)
      return result if number <= 1

      next_number = (number - 1)
      factorial(next_number, result: result * next_number)
    end
  end
end

number = gets.to_i
puts Factorial.calculate(number)
