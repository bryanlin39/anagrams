require('rspec')
require('check_anagrams')

describe('String#check_anagrams') do
  it('checks if two words are anagrams') do
    expect('ruby'.check_anagrams('bury')).to(eq('Yes, these words are anagrams'))
  end
end
