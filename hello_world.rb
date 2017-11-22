require 'sinatra.rb'
require 'tilt/erb'

get '/' do
  'Hello World!'
end

get '/hello/:name' do
  template = Tilt::ERBTemplate.new('templates/hello.erb')
  #"Welcome #{params['name']}!"
  template.render(Object.new, name: params['name'])
end
