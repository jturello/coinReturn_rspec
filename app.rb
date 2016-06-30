require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/coin_return')
require('pry')
require('launchy')

get('/') do
  erb(:form)
end

get('/result') do
  @cents =  params['cents_entered'].to_i.coin_return()   #.fetch('cents_entered').coin_return().to_i()
  erb(:coin_combinations)
end
