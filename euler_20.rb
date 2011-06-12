require "benchmark"
limit = ARGV[0].chomp.to_i
factorial, result = 1 , 0
Benchmark.bmbm(7) do |x|
x.report { factorial = 1.upto(limit).inject { |factorial,n| factorial *= n } }
x.report { result = factorial.to_s.split(//).map{ |str| str.to_i }.reduce(:+) }
end
puts "Result = #{result}"
