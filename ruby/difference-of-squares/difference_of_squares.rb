class Squares
  def initialize(number)
    @number = number
  end
  
  def square_of_sum
    (range_of_numbers.inject(0, :+)) ** 2
  end

  def sum_of_squares
    array_of_range.inject(0, :+)
  end

  def difference
    square_of_sum - sum_of_squares
  end

private

  def range_of_numbers
    (0..@number).to_a
  end

  def array_of_range
    range_of_numbers.map { |num| num ** 2 }
  end
end

module BookKeeping
  VERSION = 4
end
