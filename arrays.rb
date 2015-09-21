module Arrays
	# def max
	# 	max = Array.new
	# end

	def max(a,b,c)
		if a > b && a > c
			return a
		elsif b > a && b > c
			return b
		elsif c > a && c > b
			return c
		end
			
	end
	
	
end