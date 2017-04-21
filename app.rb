require('sinatra')
require('sinatra/reloader')
require('./lib/check_anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @result = params.fetch('input1').check_anagrams(params.fetch('input2'))
  erb(:result)
end
