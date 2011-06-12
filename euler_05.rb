require "mathn"
require "set"

limit = ARGV[0].chomp.to_i

product = 1
numbers = Prime.each(limit).to_a
numbers.each { |n| product *= n }
set_a =Set.new((1..limit).to_a)
set_prime = Set.new(numbers)
set_composite = set_a - set_prime		
set_composite.to_a.each do |n|
	remainder = product % n
	if remainder != 0
		product = product * n / remainder
	end
end

puts "#{product}"




