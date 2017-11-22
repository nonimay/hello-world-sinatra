require 'sinatra.rb'
require 'tilt/erb'

get '/' do
  'Hello World!'
end

get '/hello/:name' do
  template = Tilt::ERBTemplate.new('templates/hello.erb')
  template.render(Object.new, name: params['name'])
end
