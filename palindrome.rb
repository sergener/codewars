

#recursive palindrome finder
##base case - if 0-1 characters to compare, true
##they won't want us to use reverse - mention you know this!


def is_palindrome?(string)
	string = string.gsub(/\s+/, "").downcase
	if string.length == 1 || string.length == 0
		true
	else
		if string[0] == string[-1]
			is_palindrome?(string[1..-2])
		else
			false
		end
	end

end

# p is_palindrome?("noxinnixon")
# p is_palindrome?("no X in Nixon")

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