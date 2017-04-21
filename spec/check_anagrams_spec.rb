require('rspec')
require('check_anagrams')

describe('String#check_anagrams') do
  it('checks if two words are anagrams') do
    expect('ruby'.check_anagrams('bury')).to(eq('Yes, these words are anagrams'))
  end

  it('accurately compares two words even if they have different capitalization cases') do
    expect('ruBy'.check_anagrams('BurY')).to(eq('Yes, these words are anagrams'))
  end

  it('checks if two words are palindromes') do
    expect('racecar'.check_anagrams('racecar')).to(eq('These words are anagrams AND palindromes'))
  end

  it('checks if inputs are actual words with at least one vowel') do
    expect('bcdf'.check_anagrams('dfbc')).to(eq('Please make sure all inputs are actual words'))
  end

  it('checks if words that are not anagrams are antigrams') do
    expect('ruby'.check_anagrams('steak')).to(eq('These words are actually antigrams'))
  end

  it('checks if multiple-word inputs are all actual words with vowels') do
    expect('sdfjkl nonsense'.check_anagrams('cat')).to(eq('Please make sure all inputs are actual words'))
  end

  it('ignores spaces and punctuation to determine if multiple-word inputs are anagrams') do
    expect('A diet'.check_anagrams('I\'d eat')).to(eq('Yes, these words are anagrams'))
  end

  it('ignores spaces and punctuation to determine if multiple-word inputs are palindromes') do
    expect('A Santa:'.check_anagrams('at Nasa!!')).to(eq('These words are anagrams AND palindromes'))
  end
end
