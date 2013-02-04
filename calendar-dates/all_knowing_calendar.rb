require 'date'

def parse_date(date)
  dates = date.split(/-|\/|,/) # regex to match / , and - in the user's input
end

def sundays_that_fall_on_the_first(eDate)
  start_date = Date.new(1901, 1,1)
  dates = parse_date(eDate)
  end_date =  Date.new(dates[0].to_i, dates[1].to_i, dates[2].to_i)
  
  # start the count of sundays @ 0
  count = 0
  # loop through each of the dates in the rance and check to see if its a sunday and the day is the first.
  (start_date..end_date).each { |date| count += 1 if  date.sunday? && date.day == 1 }
  
  # print the output
  puts "There are #{count} Sundays that fall on the 1st of the month from #{start_date} to #{end_date}"
  
end

puts "Please input the end date to get the number for Sundays: "
end_date = gets.chomp

sundays_that_fall_on_the_first(end_date)

