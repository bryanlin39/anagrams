class String
  define_method(:check_palindromes) do |other_input|
    input1 = self.downcase.split("")
    input2 = other_input.downcase.split("").reverse
    if input1 == input2
      true
    end
  end
end


class String
  define_method(:check_vowels) do
    vowels = ['a','e','i','o','u','y']
    input = self.downcase.split(" ")
    has_vowels = true

    input.each() do |word|
      letters = word.split("")
      if (letters & vowels).empty?
        has_vowels = false
      end
    end
    has_vowels
  end
end


class String
  define_method(:check_anagrams) do |other_input|
    if self.check_vowels() == false || other_input.check_vowels() == false
      return 'Please make sure all inputs are actual words'
    end

    input1 = self.downcase.split("").sort
    input2 = other_input.downcase.split("").sort

    if input1 == input2 && self.check_palindromes(other_input) == true
      'These words are anagrams AND palindromes'
    elsif input1 == input2
      'Yes, these words are anagrams'
    elsif (input1 & input2).empty?
      'These words are actually antigrams'
    else
      'No, these words are not anagrams'
    end

  end
end
