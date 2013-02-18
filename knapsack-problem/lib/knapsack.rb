class Knapsack
  attr_accessor :items, :limit
  
  def initialize(items, limit)
    @items = items
    @limit = limit
  end

  def pack(items, index)
    if index == 0
      items[index].weight <=  @limit ? items[index] : nil
    end
  end
end
