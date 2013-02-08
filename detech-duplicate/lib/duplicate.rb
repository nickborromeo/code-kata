class DuplicateDetector 
  MAX = 1000
  attr_accessor :num_arr

  def initialize
    @num_arr ||= init_array
  end

  def detect_duplicates
    @num_arr.detect { |dup| @num_arr.count(dup) > 1 }
  end

  private

  def get_random_number
    1 + rand(MAX)
  end

  def init_array
    array = Array.new(MAX) {|index| index + 1}
    array << get_random_number
    array.shuffle!
  end
end
