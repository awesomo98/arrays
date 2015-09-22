module Arrays
	# def max
	# 	max = Array.new
	# end

		def middles (array_1, array_2)
		[array_1[1], array_2[1]]
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

	def repeat_separator(word, separator, count)
		str = ""
		str = str + "#{word}#{separator}" * (count - 1) + word
		str
	end

	def same_ends?(arr, n)
		0.upto(n) do |i|
			if arr[i] == arr[-n + i]
				return true
			else
				return false
			end
		end
	end

	def starry?(str)
		index = 0
		0.upto(str.length - 1) do |n|
			index = str.index('*', n)
			if n == 0 || n == str.length - 1
				next
			elsif str[index - 1] == str[index + 1]
				return true
			else
				return false
			end
		end
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

	def zero_front(array)
		new_array = []
		for element in 0...array.length
			if array[element] == 0
				new_array.push(array[element])
			end
		end
		for element in 0...array.length
			if array[element] > 0 
				new_array.push(array[element])
			end
		end
		new_array
	end

	def ten_run(array)
		multiple = 0
		for element in 0...array.length
			multiple = array[element] if array[element] % 10 == 0
			array[element] = multiple if multiple > 0
		end
		array	
	end

		def max_span(array)
		span = 0
		for n in 0...array.length
			for x in n...array.length
				if array[x] == array[n]
					span = (1 +(x-n)) if (1+(x-n)) > span && x-n >0
				end
			end
		end
		return span
	end


	
	
end