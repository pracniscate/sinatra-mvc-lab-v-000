class PigLatinizer

  def starts_with_vowel?(word)
    !!/^[AEIOUaeiou]/.match(word)
  end

  def piglatinize(text)
    # split string up into an array of words
    text_arr = text.split(" ")

    # collect a new array from that one
    text_arr.collect do |word|

      # starts with vowel
      if self.starts_with_vowel?(word)
        word + "way"

      # starts with constonants
      else
        first_letters = /^[^AEIOUaeiou]+/.match(word)[0]
        word[first_letters.size..-1] + first_letters + "ay"
      end
    end.join(" ")
  end

end
