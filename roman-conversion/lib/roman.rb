class Roman
  
  attr_accessor :numerals, :roman_numbers

  def initialize 
    @numerals = { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
  end

  def convert(input)
    @roman_numbers = input.split('')
      total = 0
      roman_numbers.each_with_index do |num, index|
        @current_num = num
	@current_index = index
	if has_next_num? && next_num_is_greater? 
	  total -= @numerals[num]
	else
	  total += @numerals[num]
	end
      end
      total
  end

  private 

  def has_next_num?
    roman_numbers[@current_index + 1] != nil
  end

  def next_num_is_greater?
    next_num = roman_numbers[@current_index + 1]
    @numerals[next_num] > @numerals[@current_num]
  end
  
end
