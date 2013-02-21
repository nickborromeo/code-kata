module SquareRoot 
  
  def self.format_number(num)
    "%.4f" % num
  end

  def self.pair_numbers(num_arr)
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
