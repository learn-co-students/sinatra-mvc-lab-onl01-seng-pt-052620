class PigLatinizer

  attr_reader :text

  def initialize
    @text = text
  end

  def piglatinize(text)
    pigword = ''
    # last_letter = text[0]
    vowel = ["a", "e","o","u","i"]
    consonant = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z", "B", "C","D","F","G","H","J","K","L","M","N","P","Q","R","S","T","V","W","X","Y","Z"]
    consonant_blends = ["bl", "br", "ch", "ck", "cl", "cr", "dr", "fl", "fr", "gh", "gl", "gr", "ng", "ph", "pl", "pr", "qu", "sc", "sh", "sk", "sl", "sm", "sn", "sp", "st", "sw", "th", "tr", "tw", "wh", "wr","Bl", "Br", "Ch", "Ck", "Cl", "Cr", "Dr", "Fl", "Fr", "Gh", "Gl", "Gr", "Ng", "Ph", "Pl", "Pr", "Qu", "Sc", "Sh", "Sk", "Sl", "Sm", "Sn", "Sp", "St", "Sw", "Th", "Tr", "Tw", "Wh", "Wr"]
    tri_blends = ["sch", "scr", "shr", "spl", "spr", "squ", "str", "thr", "Sch", "Scr", "Shr", "Spl", "Spr", "Squ", "Str", "Thr"]

    if text.include?(" ")
      sentence_array = text.split(/ /)
      pig_array = []
      sentence_array.collect do |word| 
        # binding.pry
        if consonant.include?(word[0])
          if consonant_blends.include?(word[0..1])
            if tri_blends.include?(word[0..2])
              new_word = word[3..-1]
              new_word<<word[0..2]
            else
              new_word = word[2..-1]
              new_word<<word[0..1]
            end
          else
            new_word = word[1..-1]
            new_word<<word[0]
          end
          new_word<<"ay"
          pigword = new_word
        else
          pigword = word<<"way"
        end
        pig_array<<pigword
      end
      pigified_words = pig_array.join(" ")
    else

      if consonant.include?(text[0])
        if consonant_blends.include?(text[0..1])
          if tri_blends.include?(text[0..2])
            new_word = text[3..-1]
            new_word<<text[0..2]
          else
          new_word = text[2..-1]
          new_word<<text[0..1]
          end
        else
          new_word = text[1..-1]
          new_word<<text[0]
        end
        new_word<<"ay"
        pigword = new_word
      else
        pigword = text<<"way"
      end

    end

  end

end