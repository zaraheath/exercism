class Hamming
	def self.compute(string_1, string_2)
		raise ArgumentError if string_1.size != string_2.size
		
		count = 0
		string_1.scan(/\w/).each_with_index do |char, n|
			count += 1 if char != string_2[n]
		end
		count
	end
end