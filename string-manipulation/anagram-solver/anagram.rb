require 'open-uri'

def anagrammatize(anagram)
  
  # create the dicitionary 
  dictionary = create_dictionary_hash
  
  # look for anagram solutions
  sorted_word = anagram.downcase.split('').sort!.join('')
  anagram_solutions = dictionary[sorted_word]
  
  # display the solution to the anagrams
  puts anagram_solutions
end

def create_dictionary_hash
  hased_dictionary = Hash.new("")
  # reach out to words.txt from github project and parse it into a string
  open('https://raw.github.com/rmxdave/wordchecker/master/words.txt') do |line|
    line.each_line {|word| hased_dictionary[word.chomp.split('').sort!.join('')] += word }
  end
  # return the hash of sorted words 
  hased_dictionary
end

anagrammatize("TEST")