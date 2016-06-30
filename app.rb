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
  @err = nil

  if Integer(params['cents_entered'].to_i) == 0 && params['cents_entered'] != "0"
    @err = "Argument not valid - #{params['cents_entered']}"
    erb(:coin_combinations)
  else
    @cents = params['cents_entered'].to_i.coin_return()
    erb(:coin_combinations)
  end

end
