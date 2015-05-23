def number_count(target, num_array)
  occurences = 0
  num_array.each do |num|
    occurences +=  num.to_s.split('').count(target.to_s)
  end
  occurences
end
