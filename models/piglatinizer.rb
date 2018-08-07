class PigLatinizer
  attr_reader :text

  def piglatinize(text)
    vowels = /[aeiou]/
    consonants = /[bcdfghjklmnpqrstvwxyz]/

    @text_array = text.split(" ")
    @text_array.map do |word|
      if word[0].match(vowels)
        word + "way"
      else
        begins_with_consonant = word.index(vowels)
        move_letters(word, begins_with_consonant)
      end
    end.join(" ")
  end

  def move_letters(word, consonant)
    word_array = word.split("")
    consonant.times do
      word_array.insert(word.length-1, word_array.delete_at(o))
    end
    word_array.join("") + "ay"
  end

end
