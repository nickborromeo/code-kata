class Delimeter

  def valid_pairs?(string)
    my_stack = []
    string.chomp.split('').each do |symbol|
      if symbol == '(' || symbol == '[' || symbol =='{'
        my_stack.push(symbol)
      else
        condition = (my_stack[-1] == '(' && symbol == ')' ||
          my_stack[-1] == '[' && symbol == ']' ||
          my_stack[-1] == '{' && symbol == '}')

        if condition then my_stack.pop else return false end
      end
    end
    return true if my_stack.empty?
  end
end
