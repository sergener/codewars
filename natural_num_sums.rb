# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

def natural_nums(num1, num2, limit)
	sum = 0
	counter = 1 
	while counter < limit
		if counter%num1 == 0 && counter%num2 == 0
			sum += counter
		elsif counter%num1 == 0
			sum += counter
		elsif counter%num2 == 0
			sum += counter
		end
		counter += 1
	end
	return sum
end
