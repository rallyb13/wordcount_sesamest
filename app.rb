require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/frequency')

get('/') do
  erb(:frequency)
end

get('/the_count') do
@keyword = params.fetch('keyword')
@sentence = params.fetch('sentence')
@frequency = @sentence.frequency(@keyword)

if @frequency==1
  @plural = "instance"
else
  @plural = "instances"
end

  erb(:the_count)
end
