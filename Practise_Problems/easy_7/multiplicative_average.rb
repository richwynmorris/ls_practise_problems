# Solution:
def show_multiplicative_average(arr)

	multiple = arr.inject(:*)

	average = multiple.to_f / arr.length.to_f

	puts "The result is #{'%.3f' % average}" 

end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])