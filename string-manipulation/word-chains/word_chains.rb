def word_converter(start_word, end_word)
  
  # loop through until start word == end word
  index = 0
  while start_word != end_word
    
    tmpword = replace_char(start_word, end_word, index)
    start_word = tmpword
    
    puts tmpword # display the wordsrm
    
    index += 1 
    
    index = 0 if index == start_word.length # reset index to beginning of string
  end

end

def replace_char(start_word, end_word, index)
  
  temp_word = start_word.sub(/#{start_word[index]}/, end_word[index])
  
  # check to see if start word is a valid word
  valid_dictionary_word?(temp_word) ? temp_word : start_word

end

def valid_dictionary_word?(word)
  dictionary_word = open("./words.txt").grep(/\b#{word}\b/)
  
  dictionary_word.empty? ? false : true # return true if word is a valid word

end

word_converter("cat","dog")