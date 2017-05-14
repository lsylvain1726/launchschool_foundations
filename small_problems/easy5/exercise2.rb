# exercise2.rb

# time of day represented as number of minutes before or after midnight
# if number of minutes is positive, the time is after midnight
# if number of minutes is negative, the time is before midnight
# method takes time using minute based formate
# returns time of day in 24 hour format
# 24 hours in a day

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(delta_minutes)
	delta_minutes = delta_minutes % MINUTES_PER_DAY
	hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
	format('%02d:%02d', hours, minutes)
end


puts time_of_day(0) == "00:00"
puts time_of_day(-3) == "23:57"
puts time_of_day(35) == "00:35"
puts time_of_day(-1437) == "00:03"
puts time_of_day(3000) == "02:00"
puts time_of_day(800) == "13:20"
puts time_of_day(-4231) == "01:29"

def time_of_day(mins)
	 t = Time.new(2017, 1, 1) # start from a sunday 00:00
  (t + (mins * 60)).strftime('%A %H:%M') # convert minutes to seconds before adding
end


puts time_of_day(0) 
puts time_of_day(-3) 
puts time_of_day(35) 
puts time_of_day(-1437)
puts time_of_day(3000)
puts time_of_day(800) 
puts time_of_day(-4231) 



