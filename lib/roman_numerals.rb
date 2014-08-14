NUMERALS = { 1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M", 5000 => "V_", 10000 => "X_" }

def romanize_ones(ones)
	if ones > 0 && ones <= 5
		if ones % 5 == 0
			return NUMERALS[5]
		elsif ones % 5 == 4
			return "#{NUMERALS[1]}#{NUMERALS[5]}"
		else
			return "#{NUMERALS[1] * ones}"
		end
	elsif ones > 5
		if ones % 5 == 0
			return NUMERALS[10]
		elsif ones % 5 == 4
			return "#{NUMERALS[1]}#{NUMERALS[10]}"
		else
			return "#{NUMERALS[5]}#{NUMERALS[1] * (ones - 5)}"
		end
	end
end

def romanize_tens(tens)
	if tens > 0 && tens <= 5
		if tens % 5 == 0
			return NUMERALS[50]
		elsif tens % 5 == 4
			return "#{NUMERALS[10]}#{NUMERALS[50]}"
		else
			return "#{NUMERALS[10] * tens}"
		end
	elsif tens > 5
		if tens % 5 == 0
			return NUMERALS[100]
		elsif tens % 5 == 4
			return "#{NUMERALS[10]}#{NUMERALS[100]}"
		else
			return "#{NUMERALS[50]}#{NUMERALS[10] * (tens - 5)}"
		end
	end
end

def romanize_hundreds(hundreds)
	if hundreds > 0 && hundreds <= 5
		if hundreds % 5 == 0
			return NUMERALS[500]
		elsif hundreds % 5 == 4
			return "#{NUMERALS[100]}#{NUMERALS[500]}"
		else
			return "#{NUMERALS[100] * hundreds}"
		end
	elsif hundreds > 5
		if hundreds % 5 == 0
			return NUMERALS[1000]
		elsif hundreds % 5 == 4
			return "#{NUMERALS[100]}#{NUMERALS[1000]}"
		else
			return "#{NUMERALS[500]}#{NUMERALS[100] * (hundreds - 5)}"
		end
	end
end

def romanize_thousands(thousands)
	if thousands > 0 && thousands <= 5
		if thousands % 5 == 0
			return NUMERALS[5000]
		elsif thousands % 5 == 4
			return "#{NUMERALS[1000]}#{NUMERALS[5000]}"
		else
			return "#{NUMERALS[1000] * thousands}"
		end
	elsif thousands > 5
		if thousands % 5 == 0
			return NUMERALS[10000]
		elsif thousands % 5 == 4
			return "#{NUMERALS[1000]}#{NUMERALS[10000]}"
		else
			return "#{NUMERALS[5000]}#{NUMERALS[1000] * (hundreds - 5)}"
		end
	end
end

def romanize(number)
	ones = number.to_s[-1].to_i
	tens = number.to_s[-2].to_i
	hundreds = number.to_s[-3].to_i
	thousands = number.to_s[-4].to_i

	return "#{romanize_thousands(thousands)}#{romanize_hundreds(hundreds)}#{romanize_tens(tens)}#{romanize_ones(ones)}"
end