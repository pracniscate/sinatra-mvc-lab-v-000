class PigLatinizer
  attr_reader :text

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

  # def piglatinize(text)
  #   vowels = /[aeiou]/
  #   consonants = /[bcdfghjklmnpqrstvwxyz]/
  # 
  #   @text_array = text.split(" ")
  #   @text_array.map do |word|
  #     if word[0].match(vowels)
  #       word + "way"
  #     else
  #       begins_with_consonant = word.index(vowels)
  #       move_letters(word, begins_with_consonant)
  #     end
  #   end.join(" ")
  # end
  # 
  # def move_letters(word, consonant)
  #   word_array = word.split("")
  #   consonant.times do
  #     word_array.insert(word.length-1, word_array.delete_at(o))
  #   end
  #   word_array.join("") + "ay"
  # end

end
