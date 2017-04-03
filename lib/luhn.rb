module Luhn
	def self.is_valid?(number)
		digits = []
		operated_digits = []
		number.to_s.split('').each {|i| digits << i.to_i}
		reversed_digits = digits.reverse
		reversed_digits.each_with_index do |val, i|
			val = val*2 if i%2 == 1
			val = val - 9 if val >= 10
			operated_digits << val
		end
		return operated_digits.inject(:+) % 10 == 0 
	end
end

