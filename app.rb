require ('sinatra')
require ('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/lemons')

get('/') do
  erb(:index)
end

get('/lemons') do
  @vehicles = Vehicle.all()
  erb(:lemons)
end

get('/lemons/new') do
  erb(:lemon_forms)
end

post('/lemons') do
  make = params.fetch('make')
  model = params.fetch('model')
  year = params.fetch('year')
  vehicle = Vehicle.new(make, model, year)
  vehicle.save()
  erb(:success)
end

get('/lemons/:id') do
  @vehicle = Vehicle.find(params.fetch('id').to_i())
  erb(:lemon)
end
