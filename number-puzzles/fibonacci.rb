def fib(n)
  n > 2 ? n : (fib(n-1) + fib(n-2)) # recursive solution to fibonacci
end

puts fib(8) # display the fiboncci number of n