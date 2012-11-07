def factorial(n)
  return 1 if n == 0    # base case of 0
  1.upto(n).inject(:*)  # solution to factorial
end

print "Please input number that you want to compute the factorial of: "
num = gets.chomp.to_i

puts factorial(num)