MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24

def time_of_day(mins)
  hours, minutes = mins.divmod(MINUTES_IN_HOUR)
  hours = hours.divmod(HOURS_IN_DAY).last
  sprintf('%02d:%02d', hours, minutes)
end
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"
