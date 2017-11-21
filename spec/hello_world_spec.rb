require File.expand_path '../test_helper.rb', __FILE__

include Rack::Test::Methods

def app
  Sinatra::Application
end

describe "hello world app" do
  it "should successfully return a greeting" do
    get '/'
    last_response.body.must_include 'Hello World!'
  end

  it "should return a personalised greeting" do
    get '/hello/Fiona'
    last_response.body.must_include 'Welcome Fiona!'
  end
end
