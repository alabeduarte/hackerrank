class FindDigit
  def divisible_count(number)
    digits_of(number).reject do |n|
      n == 0
    end.select { |n| number % n == 0 }.count
  end

  private

  def digits_of(number)
    number.to_s.split('').map(&:to_i)
  end
end

# test_cases = gets.to_i
# test_cases.times do
#   input = gets.to_i
#   find_digit = FindDigit.new
#   puts find_digit.divisible_count(input)
# end
