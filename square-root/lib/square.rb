module SquareRoot 
  
  def sqrt(number)
    num_arr = format_number(number).split('')
    pairs = pair_numbers(num_arr)
    p pairs
    square_root = ""
    while !pairs.empty?
      pair = pairs.pop
      prev_num = 0
    end
    square_root.to_f
  end
  
  private

  def format_number(num)
    "%.4f" % num
  end

  def pair_numbers(num_arr)
    pairs = []
    while !num_arr.empty?
      if num_arr[-1] == "."
        pairs << num_arr.pop
      else
        pairs << num_arr.pop(2).join
      end
    end
    pairs
  end
end
