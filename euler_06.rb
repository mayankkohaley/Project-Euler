require "test/unit"

def square_sum_of_natural_numbers(limit)
	(limit * (limit + 1) / 2)**2
end

def sum_of_squares_of_natural_numbers(limit)
	limit * (limit + 1) * ( (2*limit) + 1) / 6
end

limit = ARGV[0].chomp.to_i

puts "Result = #{square_sum_of_natural_numbers(limit) - sum_of_squares_of_natural_numbers(limit)}"


class TestNaturalNumbers < Test::Unit::TestCase
	def test_sum_of_natural_numbers
		assert_equal(3025,square_sum_of_natural_numbers(10))
	end
	
	def test_sum_of_squares_of_natural_numbers
		assert_equal(385,sum_of_squares_of_natural_numbers(10))
	end
end
