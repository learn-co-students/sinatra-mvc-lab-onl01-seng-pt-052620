class PigLatinizer
    def piglatinize(text)
        words = text.split(' ')
        new_arr = words.map do |w|
            if w.start_with?(/a|e|i|o|u|A|E|I|O|U/)
                w = w + 'way'
            elsif w.start_with?(/str|phr|spr|Str|Phr|Spr/)
                l = w[0..2]
                w = w[3..w.length] + l + 'ay'
            elsif w.start_with?(/sm|st|gl|tr|fl|pl|pr|th|wh|sk|Sm|St|Gl|Tr|Fl|Pl|Th|Pr|Wh|Sk/)
                l = w[0..1]
                w = w[2..w.length] + l + 'ay'
            else
                l = w[0]
                w = w[1..w.length] + l + 'ay'
            end
        end
        new_arr.join(' ')
    end
end
