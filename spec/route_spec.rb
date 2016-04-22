require 'spec_helper'

describe App do

  include Rack::Test::Methods

  describe 'Rack app returns a response' do
    let(:app) { App::ExampleApp }

    it "responds with 'This is a response'" do
      get '/'
      expect(last_response.body).to include('This is a response')
    end
  end

  describe 'Routes construct returns a response' do
    let(:app) { Routes }

    it "responds with 'This is a response' at /" do
      get '/'
      expect(last_response.body).to include('This is a response')
    end

  end
end
