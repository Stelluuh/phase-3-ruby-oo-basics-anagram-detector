# Your code goes here!

require 'pry'

class Anagram
    
    attr_accessor :word

    def initialize (word)
        @word = word
    end
# we want a word (a new instance) to respond to the match method. If the word has an anogram inside the anagrams_array provided, then it will return that anagram. 
    
    def match(anagrams_array)
        #takes an array of possible anagrams; returns all matches in an array; no matches returns an empty array
        
        #iterate through anagrams_array, separate words using .split, separete each letter using .sort. Then using == to see if the instance word variable matches word
        anagrams_array.filter do |word| 
           word.split("").sort == @word.split("").sort
        #    binding.pry
        end
    end
end

#create a new instance to test code
listen = Anagram.new("listen")
# to test code, call the instance.match method and put in an array.
listen.match(%w[enlists google inlets banana])
# => ["inlets"]

# binding.pry