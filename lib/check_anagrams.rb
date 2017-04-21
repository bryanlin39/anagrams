class String
  define_method(:check_palindromes) do |other_input|
    self_stripped = self.gsub(/[^\w]|_/, "")
    input1 = self_stripped.downcase.split("")
    other_input_stripped = other_input.gsub(/[^\w]|_/, "")
    input2 = other_input_stripped.downcase.split("").reverse

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
      return 'Please make sure all inputs are actual words.'
    end

    self_stripped = self.gsub(/[^\w]|_/, "")
    input1 = self_stripped.downcase.split("").sort
    other_input_stripped = other_input.gsub(/[^\w]|_/, "")
    input2 = other_input_stripped.downcase.split("").sort

    if input1 == input2 && self.check_palindromes(other_input) == true
      'These words are anagrams AND palindromes! Neat.'
    elsif input1 == input2
      'These words are anagrams! Cool.'
    elsif (input1 & input2).empty?
      'These words are actually antigrams. Whoa.'
    else
      'These words are not related. Booo.'
    end

  end
end
