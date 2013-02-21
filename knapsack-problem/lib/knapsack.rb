class Knapsack
  attr_accessor :items
  
  def initialize(items)
    @items = items
  end

  def max_value(index, limit)
    item = @items[index]
  
    if index == 0
      if item.weight <= limit
        return item.value
      else
        return 0
      end
    end
    
    dont_take_branch = max_value(index-1, limit)

    if item.weight > limit
      return dont_take_branch 
    else
      do_take_branch = item.value + max_value(index-1, limit - item.weight)
    end

    return [dont_take_branch,do_take_branch].max

  end
end
