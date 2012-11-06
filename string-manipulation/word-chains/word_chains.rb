def word_converter(start_word, end_word)
 
  word_chain = []
  # loop through until start word == end word
  index = 0
  while start_word != end_word
    
    tmpword = replace_char(start_word, end_word, index)
    start_word = tmpword
    
    word_chain << tmpword # save the chain in an array
    
    index += 1 
    
    index = 0 if index == (start_word.length > end_word.length ? start_word.length : end_word.length) # reset index to beginning of string
  end
  
  word_chain
end

def replace_char(start_word, end_word, index)
  
  temp_word = if end_word.length == start_word.length 
                start_word.sub(/#{start_word[index]}/, end_word[index])
              else
                end_word.sub(/#{end_word[index]}/, start_word[index])
              end
                
  
  valid_dictionary_word?(temp_word) ? temp_word : start_word # check to see if start word is a valid word
end

def valid_dictionary_word?(word)
  dictionary_word = open("./words.txt").grep(/\b#{word}\b/)
  
  dictionary_word.empty? ? false : true # return true if word is a valid word
end

# Display the word chain
puts word_converter("dog","cat")