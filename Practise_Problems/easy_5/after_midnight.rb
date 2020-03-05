# PROBLEM
# -------------
# Write a method that takes a time using this minute-based format 
# and returns the time of day in 24 hour format (hh:mm). Your 
# method should work with any integer input.

# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# TEST CASES
# --------------
# time_of_day(0) == "00:00"
# time_of_day(-3) == "23:57"
# time_of_day(35) == "00:35"
# time_of_day(-1437) == "00:03"
# time_of_day(3000) == "02:00"
# time_of_day(800) == "13:20"
# time_of_day(-4231) == "01:29"

# input: integer
# output: string
# rules: should use the minute based format (hh:mm)
#        should work with any integer input 
#		 You may not use ruby's Date and Time classes.

# Algorithim 
# The method time_of_day is defined and intialiazed within the program.
# time_of_day has one parameter which is int.
# The variable hh is initalialized and assigned the value of 0
# The variable mm is initalialized and assigned the value of 0 
# Define method check_mm



def calculate_hh(num, hh)

	num_of_hours = num / 60

	hh =+ num_of_hours

	return hh
end


def calculate_mm(num, mm)
	minute_remainder = num % 60

	mm =+ minute_remainder

	return mm
end


def time_of_day(int)

	hh = 0
	mm = 0
	
	calculate_hh(int, hh)
	calculate_mm(int, mm)

	if hh < 10 && mm < 10
		puts "0#{hh}:0#{mm}"
	else
		puts "#{hh}:#{mm}}"
	end
end 

time_of_day(120)

# need to work out how to update mm and hh values. 

