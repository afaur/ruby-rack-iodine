App::ExampleApp = lambda { |env|
  [200,
    {"Content-Type" => 'text/plain'},
    ['This is a response']
  ]
}
