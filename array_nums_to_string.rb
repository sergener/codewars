require 'pry'

#Given an array with sorted numbers, i.e. [1,3,4,5,7,9] or [-1,-2,-3,7,8,9], return a string with all the numbers and more than 3 consecutive numbers returned like this: "3-5". i.e. "1, 3-5, 7, 9" or "-1--3, 7-9"

def numSort(arr)
	newArr = []
	consArr = []
	arr.each do |num|
		if newArr.empty? && consArr.empty? #first num in argument array
			newArr << num
		elsif consArr.empty? && (newArr[-1] + 1) != num #if the next num is not consecutive
			newArr << num
		elsif consArr.empty? && (newArr[-1] + 1) == num #if the next num is consecutive with previous num
			consArr << newArr.pop
			consArr << num
		elsif consArr != []
			if consArr.length < 3 && (consArr[-1]+1) != num
				newArr.concat(consArr)
				newArr << num
				consArr = []
			elsif consArr.length > 2 && (consArr[-1]+1) != num
				newArr << (consArr[0].to_s+"-"+consArr[-1].to_s)
				newArr << num
				consArr = []
			else
				consArr << num
			end
		end
	end
	return newArr.join(", ")
end

puts numSort([1,2,3,5])

				

			

