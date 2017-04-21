class String
  define_method(:check_palindromes) do |other_word|
    word1 = self.downcase.split("")
    word2 = other_word.downcase.split("").reverse
    if word1 == word2
      true
    end
  end
end

class String
  define_method(:check_anagrams) do |other_word|
    word1 = self.downcase.split("").sort
    word2 = other_word.downcase.split("").sort
    vowels = ['a','e','i','o','u','y']

    if (word1 & vowels).empty? || (word2 & vowels).empty?
      return 'Please enter actual words to compare'
    end

    if word1 == word2 && self.check_palindromes(other_word) == true
      'These words are anagrams AND palindromes'
    elsif word1 == word2
      'Yes, these words are anagrams'
    else
      'No, these words are not anagrams'
    end

  end
end
