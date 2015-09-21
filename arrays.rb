module Arrays
	# def max
	# 	max = Array.new
	# end

		def middles(array1, array2)
		array1 = (a, b, c)
		array2 = (d, e, f)
	end

	def max(a,b,c)
		if a > b && a > c
			return a
		elsif b > a && b > c
			return b
		elsif c > a && c > b
			return c
		end
			
	end

	def lucky13?(array)
		array.each do | element |
				return false if element == 1 || array[n] == 3
		end
		true
	end

	def plus_it(word, token)
		for i in 0..(word.length - token.length)
			check = word[i..(i+token.length)]
			if check == token
				i += token.length
			else
				word[i] = '+'
			end
		end
	end

	def zero_front
		
	end
	
	
end