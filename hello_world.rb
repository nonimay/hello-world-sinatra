require 'sinatra.rb'

get '/' do
  'Hello World!'
end

get '/hello/:name' do
  "Welcome #{params['name']}!"
end
