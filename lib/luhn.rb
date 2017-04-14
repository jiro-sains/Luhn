module Luhn

	def self.calculations(digits, operated_digits = [])
		digits.reverse.each_with_index do |val, i|
			val = val * 2 if i % 2 == 1
			val = val - 9 if val >= 10
			operated_digits << val
		end
		operated_digits
	end

	def self.is_valid?(number) 
    #check_sum(operation(reverse(split_number(number)))
		#number.to_s.split('').each {|i| digits << i.to_i}
		digits = number.to_s.split('').map(&:to_i)
		calculations(digits).inject(:+) % 10 == 0 
	end
end

