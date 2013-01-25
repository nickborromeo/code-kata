class BalanceArray
  def initialize
  end
  
  def balance_index(array)
    return "Cannot process empty array" if array.empty?
    array.each_index { |index| return index if sum_left(array,index) == sum_right(array, index)}
    return -1
  end 
  
  private
  
  def sum_left(array, index)
    left_side = array.slice(0, index+1)
    left_side.inject {|sum, x| sum + x}
  end
  
  def sum_right(array, index)
    right_side = array.slice(index+1, array.length)
    right_side.inject {|sum, x| sum + x }
  end
end