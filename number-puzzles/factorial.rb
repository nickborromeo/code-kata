def factorial(n)
  sum = 1
  return 1 if n == 0
  while n > 0
    sum *= n
    n -= 1
  end
  sum
end

puts factorial(3)