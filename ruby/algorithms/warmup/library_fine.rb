require 'date'

def input
  gets.split(' ').map(&:to_i)
end

def to_date(values)
  DateTime.new(values[2], values[1], values[0])
end

class Returned
  attr_reader :actual_return_date, :expected_return_date

  def initialize(actual_return_date, expected_return_date)
    @actual_return_date = actual_return_date
    @expected_return_date = expected_return_date
  end

  def on_or_before?
    actual_return_date <= expected_return_date
  end

  def same_month?
    actual_return_date.month == expected_return_date.month
  end

  def same_year?
    actual_return_date.year == expected_return_date.year
  end

  def same_month_and_some_year?
    same_month? && same_year?
  end

  def same_year_only?
    !same_month? && same_year?
  end
end

class FineCalculator
  def initialize(actual_return_date, expected_return_date)
    @returned = Returned.new(actual_return_date, expected_return_date)
  end

  def calculate
    return 0 if @returned.on_or_before?
    return (15 * late_days) if @returned.same_month_and_some_year?
    return (500 * late_months) if @returned.same_year_only?
    return 10000
  end

  private

  def late_days
    (@returned.actual_return_date - @returned.expected_return_date).to_i
  end

  def late_months
    return late_days if !@returned.same_year?

    @returned.actual_return_date.month - @returned.expected_return_date.month
  end
end

actual_return_date = to_date(input)
expected_return_date = to_date(input)

puts FineCalculator.new(actual_return_date, expected_return_date).calculate
