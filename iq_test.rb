=begin
	
Bob is preparing to pass IQ test. The most frequent task in this test is to find out which one of the given numbers differs from the others. Bob observed that one number usually differs from the others in evenness. Help Bob — to check his answers, he needs a program that among the given numbers finds one that is different in evenness, and return a position of this number.

! Keep in mind that your task is to help Bob solve a real IQ test, which means indexes of the elements start from 1 (not 0)

Examples :

iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers are even

iq_test("1 2 1 1") => 2 // Second number is even, while the rest of the numbers are odd

=end


def iq_test(numbers)
  numbers = numbers.split.map{|num| num.to_i }
  evens = numbers.count { |num| num.even? }
  if evens > 1
    numbers.each_with_index { |num, idx| return idx+1 if num.odd? }
  else
    numbers.each_with_index { |num, idx| return idx+1 if num.even? }
  end
end


# def iq_test(numbers)
#   nums = numbers.split.map(&:to_i).map(&:even?)
#   nums.count(true) > 1 ? nums.index(false) + 1 : nums.index(true) + 1
# end
