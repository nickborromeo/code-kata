def twin_prime(limit)
  
  primes = []
  twin_primes = []
  non_primes = /^1?$|^(11+?)\1+$/   # regex to determine if number is not primeclear
  
  #Find the primes in the limit given
  0.upto(limit) do |num|
     primes << num unless non_primes.match(("1" * num))
  end
  
  # Loop to determine the twin primes. 
  for i in 0..(primes.length-2)
    diff = primes[i+1] - primes[i]
    if diff == 2
      twin_primes << "(#{primes[i]}, #{primes[i+1]})"
    end
  end
      
  puts twin_primes
end

# Call to test the method
print "Please enter the limit for the range of Prime numbers: "
limit = gets.chomp
twin_prime(limit.to_i)