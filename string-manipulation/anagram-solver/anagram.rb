require 'open-uri'

def anagrammatize
  # reach out to words.txt from github project and parse it into a string
  words = open('https://raw.github.com/rmxdave/wordchecker/master/words.txt')
  dictionary = words.read
  puts dictionary
  
end

anagrammatize