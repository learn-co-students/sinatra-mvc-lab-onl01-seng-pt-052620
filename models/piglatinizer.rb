class PigLatinizer
    attr_accessor :text 
    
    def piglatinize(words)
       split_word = words.split(" ")
       results = split_word.map do |word|
        piglatinize_word(word)
        end
        results.join(" ")
    end

    def vowel?(char)
        char.match(/[aAeEiIoOuU]/)
    end 

    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else 
            vowel_index = word.index(/[aAeEiIoOuU]/) 
            consonants = word.slice(0..vowel_index-1)
            word_leftover = word.slice(vowel_index..word.length)
            word_leftover + consonants + "ay"
        end
    end
end

    





