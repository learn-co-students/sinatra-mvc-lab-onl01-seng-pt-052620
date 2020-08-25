require 'pry'

class PigLatinizer < App

    def piglatinize(text)
        words = text.split(" ")
        array = []
        new_word = word.split(/([AEIOUaeiou].*)/).reject{|w| w.empty?}
        words.each do |word|
            if new_word.length == 1
                array.push("#{new_word[0]}way")
            else
                array.push("#{new_word[1]}#{new_word[0]}ay") 
            end 
        end
        array.join(" ") 
    end 

end 