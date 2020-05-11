require('sinatra')
require('sinatra/reloader')
require('./lib/parcels_logic')
require('pry')
also_reload('lib/**/*.rb')

# get('/') do
#   erb(:)
# end