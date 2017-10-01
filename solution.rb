def single_iteration(input_string)
	buffer_symbol = input_string[0]
	buffer_symbol_count = 0
	result_string = ''
	symbols_arr = input_string.split('')

	symbols_arr.each_with_index do |el, i| 
		if el == buffer_symbol
			buffer_symbol_count += 1
		else
			result_string += buffer_symbol_count.to_s + buffer_symbol
			buffer_symbol = el
			buffer_symbol_count = 1
		end
		result_string += buffer_symbol_count.to_s + buffer_symbol unless symbols_arr[i+1]
	end

	return result_string	
end


def generate_sequence(initial_state, number_of_iteratons)	
	str = initial_state
	puts str
	number_of_iteratons.times do 
		str = single_iteration(str)
		puts str
	end
end


generate_sequence('1', 10)