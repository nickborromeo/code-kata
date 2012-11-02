require 'open-uri'

def anagrammatize(anagram, mode)
  
  # create the dicitionary 
  dictionary = HashDictionary.new
  
  sorted_word = anagram.downcase.split('').sort!.join('')
  
  case mode
  when "online"
    online_dictionary = dictionary.create_dictionary_hash_from_web
    puts online_dictionary[sorted_word]
  when "offline"
    dictionary.create_dictionary_hash_from_file unless File.exists?("./sorted_words.txt")
    puts look_up_cached_dictionary(sorted_word)
  else
    puts "Not a valid choice!"
  end

end

def look_up_cached_dictionary(sorted_word)
  cached_dictionary = nil
  File.open("./sorted_words.txt", "r") { |file| cached_dictionary = Marshal.load(file) }
  cached_dictionary[sorted_word]
end

class HashDictionary
  
  attr_accessor :hashed_dictionary
  
  def initialize
    @hashed_dictionary = Hash.new("")
  end
  
  def create_dictionary_hash_from_web
    
    # reach out to words.txt from github project and parse it into a string
    open('https://raw.github.com/rmxdave/wordchecker/master/words.txt') do |line|
      line.each_line {|word| @hashed_dictionary[word.chomp.split('').sort!.join('')] += word }
    end
    # return the hash of sorted words 
    @hashed_dictionary
  end
  
  def create_dictionary_hash_from_file
    # Create the hash from the words.txt file in the application
    File.open("./words.txt", "r") do |file|
      while word = file.gets
        @hashed_dictionary[word.chomp.split('').sort!.join('')] += word
      end
    end
   
    # Serialize the hash into ta file for future use. 
    File.open("./sorted_words.txt", "w") do |file|
      Marshal.dump(@hashed_dictionary, file)
    end
  end
  
end  

print "Please input the word to solve for anagrams: "
word = gets.chomp

print "Please input the mode that you want. online or offline: "
mode = gets.downcase.chomp

anagrammatize(word, mode)