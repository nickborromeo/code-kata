module Chop

  def chop(num, array)
    return -1 if array.empty?
    tmp_array = array.dup
    while tmp_array.length > 2
      midpoint = tmp_array.length / 2
      num <= tmp_array[midpoint] ?  tmp_array.slice!(midpoint+1..-1) : tmp_array.slice!(0..midpoint) 
    end
    if num == tmp_array[0] || num == tmp_array[1]
      return array.index(num)
    end
    return -1
  end

end

