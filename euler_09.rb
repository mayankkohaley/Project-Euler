# By Euclid's formula 
# http://www.math.uic.edu/~fields/puzzle/triples.html
2.upto(100) do |n|
	1.upto(n) do |m|
		a = (n)**2 - m**2
		b = 2 * m * n
		c = n**2 + m**2
		if a > 0 and b > 0  and c > 0 and ( a+b+c ==1000 )
			puts "#{a},#{b},#{c}"
		end
	end
end

 
