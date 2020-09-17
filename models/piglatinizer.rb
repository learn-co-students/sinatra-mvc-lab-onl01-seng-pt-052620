class PigLatinizer


    def piglatinize(word)       

        words = word.split(" ")

        str = []
        
        words.each do |word|
            if word.start_with?(/(^[aeiouAEIOU])/)
                word.concat("way")
                str << word
            elsif word.start_with?(/(^[^aeiouAEIOU])/)
                words = word.split(/(^[^aeiouAEIOU]*)(.*)/)
                word = words[2] + (words[1].concat("ay"))
                str << word
            end
        end

        str.join(" ")

    end
end