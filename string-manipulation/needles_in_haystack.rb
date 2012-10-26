def find_needle_occurrences(needle, haystack)
  
  count =  haystack.split('').count(needle)
  puts "The number of occurrences for #{needle} is #{count} "
  
end

print "Please enter the first string representing the 'needle' > "
needle = gets.chomp

print "Please enter the second string representing the 'haystack' > "
haystack = gets.chomp

find_needle_occurances(needle,haystack)