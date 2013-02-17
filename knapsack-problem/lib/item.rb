class Item
  attr_accessor :name, :weight, :value

  def initialize(name, weight, value)
    @name = name
    @weight = weight
    @value = value
  end
end
