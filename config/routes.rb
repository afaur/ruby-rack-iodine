Routes = Rack::Builder.new do

  use Rack::Session::Cookie, key: ENV['SESSION_KEY'],
                             expire_after: 24*60*60, # 1 day in seconds
                             secret: ENV['SESSION_SECRET']

  run App::ExampleApp

end
