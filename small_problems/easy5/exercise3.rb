# exercise3.rb

# number of minutes positive = time after midnight
# number of minutes negative = time before midnight

# two methods
# each take time of day in 24 hour format
# return number of minutes before and after midnight
# return value in range 0..1439

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR


def after_midnight(time_str)
	hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time_str)
	delta_minutes = MINUTES_PER_DAY - after_midnight(time_str)
	delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
	delta_minutes
end	


puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0




