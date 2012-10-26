def find_needle_occurances(needle, haystack)
  
  count =  haystack.split('').count(needle)
  puts count
  
end

find_needle_occurances("a","baca")