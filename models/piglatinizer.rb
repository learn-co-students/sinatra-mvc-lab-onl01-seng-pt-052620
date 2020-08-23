class PigLatinizer

    def self.process(text)
        position_of_first_vowel = text =~ /[aeiouAEIOU]/
        if position_of_first_vowel == 0
            text << "way"
        else
            letters = text.split("")
            position_of_first_vowel.times do
                letters.rotate!(1)
            end
            letters << "ay"
            letters.join
        end
    end

    def piglatinize(text)
        words = text.split(" ")
        product = words.collect do |word|
            PigLatinizer.process(word)
        end
        product.join(" ")
    end 

end