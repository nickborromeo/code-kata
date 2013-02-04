def number_count(target, num_array)
  occurences = 0
  num_array.each do |num|
    occurences +=  num.to_s.split('').count(target.to_s)
  end
  occurences
end

array = [1,2,11,13]

print "Please enter the number which you want to count the occurences of: "
num  = gets.chomp

occurences = number_count(num, array)
puts  "The number of occurences for #{num} in the array is #{occurences} "