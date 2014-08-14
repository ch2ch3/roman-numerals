NUMERALS = { 1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M" }

def romanize_ones(ones)
	if ones <= 5
		if ones % 5 == 0
			return NUMERALS[ones]
		elsif ones % 5 == 4
			return "IV"
		else
			return "#{"I" * ones}"
		end
	elsif ones > 5
		if ones % 5 == 0
			return "X"
		elsif ones % 5 == 4
			return "IX"
		else
			return "V#{"I" * (ones - 5)}"
		end
	end
end

def romanize_tens(tens)
	if tens > 0 && tens <= 5
		if tens % 5 == 0
			return "L"
		elsif tens % 5 == 4
			return "XL"
		else
			return "#{"X" * tens}"
		end
	elsif tens > 5
		if tens % 5 == 0
			return "C"
		elsif tens % 5 == 4
			return "XC"
		else
			return "L#{"X" * (tens - 5)}"
		end
	end
end

def romanize(number)
	ones = number.to_s[-1].to_i
	tens = number.to_s[-2].to_i

	return "#{romanize_tens(tens)}#{romanize_ones(ones)}"
end

(1..100).each do |number|
	puts romanize(number)
end