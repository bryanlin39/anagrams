class String
  define_method(:check_anagrams) do |other_word|
    word1 = self.downcase.split("").sort
    word2 = other_word.downcase.split("").sort
    are_anagrams = false

    if word1 == word2
      are_anagrams = true
    end

    if are_anagrams == true
      'Yes, these words are anagrams'
    else
      'No, these words are not anagrams'
    end

  end
end
