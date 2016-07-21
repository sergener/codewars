
#check if each letter in a string in a unique letter

def unique_letters?(string)
	string = string.gsub(/\s+/, "").downcase
	if string.length == 1 || string.length == 0
		true
	else
		i = 1
		result = 1
		while string.length >= i && result != 0
			result = string[0] <=> string[i]
			i+=1

		end
		if result != 0
			unique_letters?(string[1..-1])
		else
			false
		end
	end
end


# p unique_letters?("abcdefghijk")
# p unique_letters?("hello")
# p unique_letters?("sibelergener")