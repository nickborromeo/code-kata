def find_digital_sum(digit, limit)
  # call method to remove digits with 0
  non_zero_nums = remove_digits_that_have_zeros(limit)

  non_zero_nums.each do |num| 
    # pass to method that breaks down number and return true if sum equals param passed 
    if digit == break_down_number(num) && num != digit
      puts num
    end
  end
  
end

def break_down_number(digit)
  # get the sum of the broken down digit
  sum = 0
  digit.to_s.split('').each {|num| sum += num.to_i }
  sum
end

def remove_digits_that_have_zeros(limit)
  # make an array to remove the ones that have 0
  arr = []
  (1..limit).each { |num| arr.push(num) unless num.to_s.include?('0')}
  arr
end

print "Please enter the limit of the set of numbers to check: "
limit = gets.chomp.to_i

print "Please enter the number the sum will equal to: "
digit = gets.chomp.to_i

find_digital_sum(8, 1000)