

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
