module SquareRoot 
  
  def sqrt(number)
    num_arr = format_number(number).split('')
    pairs = pair_numbers(num_arr)
    square_root = ""
    
    # first pop = first answer
    init_value = pairs.pop
    divider = max_square(init_value)
    square_root << divider
    
    while !pairs.empty?
      init_value = (init_value.to_i - divider.to_i).to_s
      init_value = init_value.to_s << pairs.pop
      p init_value
      prev_num = 0
    end
    square_root.to_f
  end
  
  private

  def max_square(limit) 
    square,count = 0,0

    until square >= limit.to_i do
      count += 1
      square = count * count
    end
    answer = square == limit.to_i ? count : count-1
    return answer.to_s
  end

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
