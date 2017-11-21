require 'sinatra.rb'

get '/' do
  'Hello World!'
end

get '/hello/:name' do
  "Hello #{params['name']}!"
end
