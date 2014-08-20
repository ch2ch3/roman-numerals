def romanize(number)
	numerals = { 1000 => "M",
				 900  => "CM",
				 500  => "D",
				 400  => "CD",
				 100  => "C",
				 90   => "XC",
				 50   => "L",
				 40   => "XL",
				 10   => "X",
				 9    => "IX",
				 5    => "V",
				 4    => "IV",
				 1    => "I"   }

	output = ""
	numerals.each do |key, value|
		(number/key).times { output << value; number -= key }
	end
	return output
end

puts "Enter a number:"
input = gets.chomp.to_i

while input > 3999
	puts "The Romans didn't know numbers that big. Try something smaller."
	input = gets.chomp.to_i
end

puts "#{input} is #{romanize(input)}."