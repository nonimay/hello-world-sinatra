require 'sinatra.rb'
require 'tilt/erb'

get '/' do
  'Hello Fiona!'
end

get '/hello/:name' do
  template = Tilt::ERBTemplate.new('templates/hello.erb')
  template.render(Object.new, name: params['name'])
end
