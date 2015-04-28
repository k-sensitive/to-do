require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/to_do')

get('/') do
  @tasks = ToDo.all()
  erb(:index)
end

post('/tasks') do
  description = params.fetch('description')
  task = ToDo.new(description)
  task.save()
  erb(:success)
end

post('/clear') do
  ToDo.clear()
  erb(:clear)
end
