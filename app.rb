require('sinatra')
require('sinatra/reloader')
require('./lib/check_anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/output') do
  erb(:output)
end
