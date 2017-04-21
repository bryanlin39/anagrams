require('rspec')
require('check_anagrams')

describe('String#check_anagrams') do
  it('checks if two words are anagrams') do
    expect('ruby'.check_anagrams('bury')).to(eq('Yes, these words are anagrams'))
  end
end

# [r,u,b,y]
# [b,u,r,y]

# [r,u,b,y]
# [c,u,r,a,t,e] => [c,a,t,e]

# [c,u,r,a,t,e]
# [r,u,b,y]
