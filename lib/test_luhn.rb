
def is_valid?(number)
	digits = []
	operated_digits = []
	number.to_s.split('').each {|i| digits << i.to_i}
	reversed_digits = digits.reverse
	#puts digits.inspect
	#puts reversed_digits.inspect
	reversed_digits.each_with_index do |val, i|
		#if i%2 == 1 then
			val = val*2 if i%2 == 1
			val = val - 9 if val >= 10
		#end		
		operated_digits << val
	end
	#puts operated_digits.inspect
	#puts operated_digits.inject(:+)
	return operated_digits.inject(:+) % 10 == 0 
end

puts is_valid?(4194560385008504)
puts is_valid?(4194560385008505)
puts is_valid?(377681478627336)
puts is_valid?(377681478627337)