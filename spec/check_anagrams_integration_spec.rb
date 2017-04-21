require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the check anagrams path', {:type => :feature}) do
  it('evaluates the user-inputted strings to see if they are anagrams, palindromes, or antigrams') do
    visit('/')
    fill_in('input1', :with => 'A Santa: ')
    fill_in('input2', :with => 'at Nasa!!')
    click_button('Compare!')
    expect(page).to have_content('These words are anagrams AND palindromes')
  end
end
