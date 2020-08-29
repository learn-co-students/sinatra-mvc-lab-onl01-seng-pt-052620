require 'pry'
class PigLatinizer
    #attr_accessor :phrase

    #def initialize(phrase)
        #@phrase = phrase
    #end

    def piglatinize(phrase)
        words_array = phrase.split(" ")
        piglatinized_array = words_array.collect {|word| piglatinize_word(word)}
        piglatinized_array.join(" ")
    end 

    def piglatinize_word(word)
        consonants = [] 
        first_letter = word[0].downcase
        if ["a", "e", "i", "o", "u"].include?(first_letter)
            "#{word}way"
        else
            consonants << word[0]
            if ["a", "e", "i", "o", "u"].include?(word[1]) == false 
                consonants << word[1]
                if ["a", "e", "i", "o", "u"].include?(word[2]) == false 
                    consonants << word[2]
                    "#{word[consonants.length..-1] + consonants.join + "ay"}"
                else
                    "#{word[consonants.length..-1] + consonants.join + "ay"}" 
                end
            else 
                "#{word[consonants.length..-1] + consonants.join + "ay"}"
            end
        end 
    end
end