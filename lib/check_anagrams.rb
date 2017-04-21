class String
  define_method(:check_anagrams) do |other_word|
    word1 = self.split("")
    word2 = other_word.split("")
    are_anagrams = true

    word1.each() do |letter|
      if word2.include?(letter)
        word2.delete(letter)
      else
        are_anagrams = false
      end
    end

    if word2.empty? == false
      are_anagrams = false
    end

    if are_anagrams == true
      'Yes, these words are anagrams'
    else
      'No, these words are not anagrams'
    end

  end
end
