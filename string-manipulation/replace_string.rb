def remove_char_from_string(string1, string2)
  string1.each_char { |letter| string2.slice!(letter) if string2.include?(letter) }
  return string2
end

print "Please enter first string: "
str1 = gets.chomp

print "Please enter second string: "
str2 = gets.chomp

print "Resulting string is #{remove_char_from_string(str1, str2)} \n"